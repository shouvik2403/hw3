class PlacesController < ApplicationController

  def index
    # find all places visited
    @places = Place.all
    # render places/index view
  end  

  def show
    # find a place
    @place = Place.find_by({"id" => params["id"]})
  end  

  def new
    reset_session
    # render view with new place form
  end  

  def create
    # start with a new place
    @place = Place.new
    # assign user-entered form data to Place's columns
    @place["name"] = params["name"]
    # save Place row
    @place.save
    # redirect user
    redirect_to "/places"
  end

end
