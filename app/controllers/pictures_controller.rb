class PicturesController < ApplicationController
  def update
    p = Picture.find_by_id(params[:id])

    if p.url.empty?
      redirect_to edit_picture_url(p), :notice => "URL is empty"
    else
      p.update_attributes(params[:picture]) # only if the url field had some data in it
      redirect_to picture_url(p), :notice => "Picture updated successfully."
    end
  end

  def create
    p = Picture.new(params[:picture])
    if p.save
      redirect_to pictures_url, :notice => "Picture created successfully."
    else
      redirect_to new_picture_url, :notice => "No URL entered"
    end
  end

  def edit
    @pic = Picture.find_by_id(params[:id])
  end

  def index
    @pictures = Picture.all

    respond_to do |format|
      format.html { render 'index' }
      format.json { render :json => @pictures }
    end
  end

  def show
    @pic = Picture.find_by_id(params[:id])

    respond_to do |format|
      format.html { render 'show' }
      format.json { render :json => @pic }
    end
  end

  def new
    @pic = Picture.new
  end

  def delete
    p = Picture.find_by_id(params[:id])
    p.destroy
    redirect_to pictures_url, :notice => "Picture toasted."
  end
end
