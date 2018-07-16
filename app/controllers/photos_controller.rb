class PhotosController < ApplicationController
  before_action :set_photo, :only => [:show]

  def index
    @photos = Photo.all
  end


  private

  def set_photo
    @photo = Photo.find(params[:id])
  end


end
