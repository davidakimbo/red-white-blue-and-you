class CongressPeopleController < ApplicationController

  def index
  end

  def show
    respond to do |format|
      format.js {}
    end
       # if params[:congress_person].length = 5
      #pass it in as a zip code
      #else
      #do a normal name seach
    # end

    # save all the congress persons information into a variable.
    # run it through other APIs in a class method
  end




end
