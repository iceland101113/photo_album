class PhotosController < ApplicationController
  before_action :set_photo, :only => [:show, :like]

  def index
    @photos = Photo.all
    @spphotos = Spphoto.all
    @message = Message.new
  end

  def like
    like_count = @photo.like
    @photo.update(like: like_count + 1)

    render json: {
      id: @photo.id,
      count: @photo.reload.like
    }
  end


  private

  def set_photo
    @photo = Photo.find(params[:id])
  end
end
