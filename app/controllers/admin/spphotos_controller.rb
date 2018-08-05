class Admin::SpphotosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_spphoto, :only => [:show, :edit, :update, :destroy]
  
  def index
    @photos = Spphoto.page(params[:page]).per(10)
  end

  def new
    @photo = Spphoto.new
  end

  def create
    @photo = Spphoto.new(spphoto_params)
    if @photo.save
      redirect_to admin_photos_path
    else
      render :action => :new
    end
  end

  def update
    if @photo.update(spphoto_params)
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

  def set_spphoto
    @photo = Spphoto.find(params[:id])
  end

  def spphoto_params
    params.require(:spphoto).permit(:title, :date, :description, :file_location)
  end
end


