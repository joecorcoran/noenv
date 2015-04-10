require_relative './application_controller'

require_relative '../models/user'
require_relative '../models/widget'

class UsersController < ApplicationController

  def index
    @users = User.all
    @widgets = Widget.all
  end

  def new
    head :unauthorized
  end

end
