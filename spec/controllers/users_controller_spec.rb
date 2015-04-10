require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe 'GET index' do
    it 'is successful' do
      get :index
      expect(response).to be_ok
    end
  end

  describe 'GET new' do
    it 'is not accessible' do
      get :new
      expect(response).to be_unauthorized
    end
  end

end
