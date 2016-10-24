require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe EgosController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Ego. As you add validations to Ego, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EgosController. Be sure to keep this updated too.
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
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested ego" do
        ego = Ego.create! valid_attributes
        put :update, params: {id: ego.to_param, ego: new_attributes}, session: valid_session
        ego.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested ego as @ego" do
        ego = Ego.create! valid_attributes
        put :update, params: {id: ego.to_param, ego: valid_attributes}, session: valid_session
        expect(assigns(:ego)).to eq(ego)
      end

    end

    context "with invalid params" do
      it "assigns the ego as @ego" do
        ego = Ego.create! valid_attributes
        put :update, params: {id: ego.to_param, ego: invalid_attributes}, session: valid_session
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

    it "redirects to the egos list" do
      ego = Ego.create! valid_attributes
      delete :destroy, params: {id: ego.to_param}, session: valid_session
      expect(response).to redirect_to(egos_url)
    end
  end

end