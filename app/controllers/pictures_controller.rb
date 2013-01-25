class PicturesController < ApplicationController

  def index
    @pictures = Picture.all

    if params[:url].present?
      @pictures << params[:url]
    end

  end

  def show
    @user_request = params["id"]
    @url = Picture.all[@user_request.to_i - 1]
  end

  def new

  end

end
