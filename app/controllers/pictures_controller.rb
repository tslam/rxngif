class PicturesController < ApplicationController

  def index
    # Needs fixing. @pictures is now an Array of Picture objects.
    @pictures = Picture.all

    if params[:url].present?
      # Write code to insert a row into the table.
    end
  end

  def show
    # Needs fixing. params[:id] is now an ID of a row in the table.
    @user_request = params["id"]
    @url = Picture.all[@user_request.to_i - 1]
  end

  def new

  end

end
