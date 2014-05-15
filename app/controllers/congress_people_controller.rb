class CongressPeopleController < ApplicationController

  def index

  end

  def show
    query = params[:query]
    if query.length == 5
      @results = CongressPerson.politician_search(query)
    elsif query.length > 5 || query.length < 5
        @

  end


end
