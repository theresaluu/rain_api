require 'rails_helper'

RSpec.describe EgosController, type: :controller do

  let(:valid_attributes) {
    FactoryGirl.build(:ego).attributes
  }

  let(:invalid_attributes) {
    FactoryGirl.build(:ego, recognize:nil).attributes
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all egos as @egos" do
      ego = Ego.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:egos)).to eq([ego])
    end
  end

  describe "GET #show" do
    it "assigns the requested ego as @ego" do
      ego = Ego.create! valid_attributes
      get :show, params: {id: ego.to_param}, session: valid_session
      expect(assigns(:ego)).to eq(ego)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Ego" do
        expect {
          post :create, params: {ego: valid_attributes}, session: valid_session
        }.to change(Ego, :count).by(1)
      end

      it "assigns a newly created ego as @ego" do
        post :create, params: {ego: valid_attributes}, session: valid_session
        expect(assigns(:ego)).to be_a(Ego)
        expect(assigns(:ego)).to be_persisted
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved ego as @ego" do
        post :create, params: {ego: invalid_attributes}, session: valid_session
        expect(assigns(:ego)).to be_a_new(Ego)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        valid_attributes.merge(recognize: "Some Other Feeling")
      }

      it "updates the requested ego" do
        ego = Ego.create! valid_attributes
        put :update,
          params: {id: ego.to_param, ego: new_attributes},
          session: valid_session
        ego.reload
        expect(assigns(:ego).recognize).to eq("Some Other Feeling")
      end

      it "assigns the requested ego as @ego" do
        ego = Ego.create! valid_attributes
        put :update,
          params: {id: ego.to_param, ego: valid_attributes},
          session: valid_session
        expect(assigns(:ego)).to eq(ego)
      end

    end

    context "with invalid params" do
      it "assigns the ego as @ego" do
        ego = Ego.create! valid_attributes
        put :update,
          params: {id: ego.to_param, ego: invalid_attributes},
          session: valid_session
        expect(assigns(:ego)).to eq(ego)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested ego" do
      ego = Ego.create! valid_attributes
      expect {
        delete :destroy, params: {id: ego.to_param}, session: valid_session
      }.to change(Ego, :count).by(-1)
    end
  end

end
