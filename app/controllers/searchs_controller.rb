class SearchsController < ApplicationController
  def index
    @politicians = Politician.all
  end
end
