class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      session[:user_id] = @user.id
      if @user.role == "Contestant"
        redirect_to new_user_path(@user), notice: "Account created!"
      else
        render "new"
      end
    else
      render "new"
    end
  end
end
