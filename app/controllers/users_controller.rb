class UsersController < ApplicationController
  
  def index
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to(users_path, :notice => "E-mail cadastrado com sucesso!")
    else
      redirect_to(users_path, :notice => @user.errors.first[1])
    end
  end
end