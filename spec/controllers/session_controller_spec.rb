require 'rails_helper'

describe SessionController do
  describe "Get #create" do

    context "ログイン" do
      before do
        allow(User).to receive(:find_or_create_from_auth_hash) { double('user', id: 1) }
        get :create, provider: 'twitter'
      end

      it "session[:user_id] に 1 が格納されること" do
        expect(session[:user_id]).to eq(1)
      end

    end
  end
end
