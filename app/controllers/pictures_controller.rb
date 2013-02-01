class PicturesController < ApplicationController
  def update
    p = Picture.find_by_id(params[:id])
    p.update_attributes(params[:picture])

    redirect_to picture_url(p.id)
  end

  def create
    p = Picture.create(params[:picture])
    redirect_to pictures_url, :notice => "Picture created successfully."
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
