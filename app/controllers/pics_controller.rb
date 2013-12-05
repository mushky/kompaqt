class PicsController < ApplicationController
  before_action :set_pic, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @pics = Pic.all
  end

  def show
  end

  def new
    @pic = Pic.new
  end

  def edit
  end

  def create
    @pic = Pic.new(pic_params)
    if @pic.save
      redirect_to @pin, notice: "Picture was succesfully uploaded!"
    else
      render action: 'new'
    end
  end

  def update
    if @pic.update(pic_params)
      redirect_to @pic, notice: "Picture was succesfully updated!"
    else
      render action: 'edit'
    end
  end

  def destroy
    @pic.destroy
    redirect_to pics_url
  end


  private
    def set_pic
      @pic = Pic.find(params[:id])
    end

    def correct_user
      @pic = current_user.pics.find_by(id: params[:id])
      redirect_to pics_path, notice: "You can't delete other peoples pics!" if @pin.nil?
    end

    def pic_params
      params.require(:pic).permit(:description)
    end
end
