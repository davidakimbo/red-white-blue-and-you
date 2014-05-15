class CongressPeopleController < ApplicationController

  def index

  end

  def show
    query = params[:congress_people]
    if query.length == 5
      @results = CongressPerson.politician_search(query)
    elsif query.length > 5 || query.length < 5
      @error_msg = "Please enter a valid zip code.. FOR AMERICA!"
    end
  end

end
