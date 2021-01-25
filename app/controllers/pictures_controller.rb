class PicturesController < ApplicationController
  
  def index
    @pictures = Picture.all
  end

  def new
    @new_picture = Picture.new
  end

  def create
    new_picture = Picture.create(picture_params)
    redirect_to user_path(new_picture.user_id)
  end

  def show
    @picture = Picture.find(params[:id])
  end

  private

  def picture_params
    params.require(:picture).permit(:image, :title, :user_id)
  end

  

end
