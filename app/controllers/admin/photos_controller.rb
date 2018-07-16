class Admin::PhotosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_photo, :only => [:show, :edit, :update, :destroy]
  
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to admin_photos_path
    else
      render :action => :new
    end
  end

  def update
    if @photo.update(photo_params)
      redirect_to admin_photo_path(@photo)
    else
      render :action => :edit
    end
  end

  def destroy
    @photo.destroy

    redirect_to admin_photos_path
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:title, :date, :description, :file_location)
  end
end
