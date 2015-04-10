require 'support/load'
require 'spec_helper'

RSpec.describe UsersController, type: :rack do
  include Rack::Test::Methods

  describe 'GET index' do
    let(:app) { UsersController.action(:index) }

    it 'is successful' do
      get :index
      expect(last_response).to be_ok
    end
  end

  describe 'GET new' do
    let(:app) { UsersController.action(:new) }

    it 'is not accessible' do
      get :new
      expect(last_response).to be_unauthorized
    end
  end

end
