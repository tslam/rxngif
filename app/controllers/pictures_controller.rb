class PicturesController < ApplicationController

  # def pictures_url
  #   return "http://localhost:3000/my_photos"
  # end

  # def picture_url(id)
  #   return "http://localhost:3000/pictures/#{id}"
  # end

  def update
    p = Picture.find_by_id(params[:id])
    p.url = params[:url]
    p.save
    redirect_to single_picture_url(params[:id])
  end

  def create
    p = Picture.new
    p.url = params[:url]
    p.save

    redirect_to pictures_list_url
  end

  def edit
    @pic = Picture.find_by_id(params[:id])
  end

  def index
    @pictures = Picture.all
  end

  def show
    # Needs fixing. params[:id] is now an ID of a row in the table.
    @user_request = params[:id]
    @pic = Picture.find_by_id(@user_request)
  end

  def new
  end

  def delete
    p = Picture.find_by_id(params[:id])
    p.destroy
    redirect_to pictures_list_url
  end


end
