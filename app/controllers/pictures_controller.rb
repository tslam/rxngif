class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show
    @user_request = params["id"]
    @url = Picture.all[@user_request.to_i - 1]
  end

end
