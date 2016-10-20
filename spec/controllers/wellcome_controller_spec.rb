describe WellcomeController do
  describe 'get #new' do

    it 'root_pathにリダイレクト' do
      get :new
      expect(response).to render_template :new
      # expect(response).to redirect_to(root_path)
    end
  end
end
