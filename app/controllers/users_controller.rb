class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@pics = @user.pics.page(params[:page]).per_page(15)
  end
end
