class PicturesController < ApplicationController
  
  def index
    @pictures = Picture.all.order(created_at: :desc)
  end

  def new
    @new_picture = Picture.new
  end

  def create
    # byebug
    tags_for_pic = []   #make a new empty array of tags 
    picture_params[:tag][:name].each do |tag_name|
      find_tag = Tag.find_by(name: tag_name)
      # if !tag_name.empty? 
        new_tag = Tag.create(name: tag_name) unless find_tag || tag_name.empty? 
      # end
      if new_tag
        tags_for_pic << new_tag
      end
      if find_tag
        tags_for_pic << find_tag
      end
      #  tags_for_pic << find_tag ? find_tag : new_tag  unless find_tag.nil? 
      #if find_tag exists(not nil) shovel find_tag into array, 
      #otherwise shovel new tag into array

      #for each tag_name in params, 
      #find the tag that already exists or create one if it there is not one
      #and shovel it into array of tags
    end
    new_picture = Picture.create(image: picture_params[:image], title: picture_params[:title], user_id: picture_params[:user_id])
    tags_for_pic.each do |tag|
      PictureTag.create(picture_id: new_picture.id, tag_id: tag.id)
    end
    redirect_to user_path(new_picture.user_id)
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_path
  end

  private

  def picture_params
    params.require(:picture).permit(:image, :title, :user_id, tag: [name: []])
  end

end
