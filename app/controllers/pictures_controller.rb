class PicturesController < ApplicationController

  def update
    # Your code goes here.
  end

  def create
    p = Picture.new
    p.url = params[:url]
    p.save

    redirect_to "http://localhost:3000/pictures"
  end

  def edit
    @id = params[:id]
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

end
