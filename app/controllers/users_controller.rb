class UsersController < ApplicationController

  def index
    @users = User.all
    @widgets = Widget.all
  end

  def new
    head :unauthorized
  end

end
