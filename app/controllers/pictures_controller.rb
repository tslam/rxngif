class PicturesController < ApplicationController
  def update
    @pic = Picture.find_by_id(params[:id])

    if @pic.update_attributes(params[:picture])
      redirect_to @pic, :notice => "Picture updated successfully."
    else
      render 'edit'
    end
  end

  def create
    @pic = Picture.new(params[:picture])
    if @pic.save
      redirect_to pictures_url, :notice => "Picture created successfully."
    else
      render 'new'
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
