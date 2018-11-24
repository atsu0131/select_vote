class PoliticiansController < ApplicationController
  def index
    @politicians = Politician.all
    @pref = Pref.find(params[:pref_id])
  end

  def show
    @politician = Politician.find(params[:id])
  end

  def new
  end

  def edit
  end

  def update
  end

  def create
  end

end
