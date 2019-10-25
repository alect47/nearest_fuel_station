class SearchController < ApplicationController
  def index
    # params[:location] gives us the address
    render locals: {
      facade: SearchFacade.new(params[:location])
    }
  end

  
end
