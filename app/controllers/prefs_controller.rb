class PrefsController < ApplicationController
  def index
    @prefs = Pref.all
  end

  def show
    @pref = Pref.find(params[:id])
  end

end
