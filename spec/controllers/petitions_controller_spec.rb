require 'spec_helper'

describe PetitionsController do

  let(:petition) { FactoryGirl.create(:petition) }
  let(:user) { FactoryGirl.create(:user) }

  describe '#index' do 

    it 'should assign @petitions' do 
      petition #call the variable here
      get :index
      expect(assigns(:petitions)).to eq([petition])
    end

    it 'renders the index template' do 
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "#new" do 

    it 'should render new template' do 
      get :new
      expect(response). to render_template("new")
    end

    it 'should assign @petition' do
      get :new
      expect(assigns(:petition).class).to eq(Petition)
    end
  end

  describe "#create" do 
    before :each do
      @petition_hash = {
        title: "title",
        description: "things"
      } 
      sign_in user
    end

    it 'should save to database ' do 
      expect{ 
        post :create, petition: @petition_hash
        }.to change(Petition, :count).by(1)
    end
  end

  describe '#show' do 

    it 'should render show' do 
      get :show, id: petition.id
      expect(response).to render_template("show")
    end

    it 'should assign @petition' do 
      get :show, id: petition.id
      expect(assigns(:petition)).to eq(petition)
    end
  end

  describe "destroy" do

    it "should delete petition" do
      petition
      expect{ delete :destroy, id: petition.id }.to change(Petition, :count).by(-1)
    end

    it "should redirect to petition index" do 
      delete :destroy, id: petition.id
      expect(response).to redirect_to petitions_path
    end

  end

end
