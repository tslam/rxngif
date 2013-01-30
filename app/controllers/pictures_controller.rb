class PicturesController < ApplicationController
  def update
    p = Picture.find_by_id(params[:id])
    form_data = { :url => params[:url], :caption => params[:caption] }
    p.update_attributes(form_data)
    # p.url = params[:url]
    # p.caption = params[:caption]
    # p.save
    redirect_to picture_url(p.id)
  end

  def create
    form_data = { :url => params[:url], :caption => params[:caption] }
    p = Picture.create(form_data)
    # p.url = params[:url]
    # p.caption = params[:caption]
    # p.save

    redirect_to pictures_url
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
    redirect_to pictures_url
  end


end
