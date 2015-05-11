class PhotosController < ApplicationController
  def index
  @list_of_photos = Photo.all
  end

  def show
  @photo = Photo.find(params[:id])
  end

  def new
  end

  def create_row
  p = Photo.new
  p.source = params[:the_source]
  p.caption = params[:the_caption]
  p.save

  redirect_to("http://localhost:3000/photos")
  end

  def destroy
  p = Photo.find(params[:id])
  p.destroy

  redirect_to("http://localhost:3000/photos")
  end

  def edit
  @photo = Photo.find(params[:id])
  end

  def update_row
  p = Photo.find(params[:id])
  p.source = params[:the_source]
  p.caption = params[:the_caption]
  p.save

  redirect_to("http://localhost:3000/photos/#{p.id}")
  end
end
