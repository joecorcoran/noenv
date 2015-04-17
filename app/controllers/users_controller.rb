class UsersController < ApplicationController
  before_action :unauthorized, only: :new

  def index
    @users = User.all
    @widgets = Widget.all
  end

  def new
  end
end
