require "rails_helper"

RSpec.describe UsersController do
  describe "GET #index" do
    context "when user is signed in" do
      before { sign_in_user }
      before { get :index }

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "renders the 'index' template" do
        expect(response).to render_template(:index)
      end
    end

    context "when user is not signed in" do
      before { get :index }

      it "redirects to sign in page" do
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
