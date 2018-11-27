class PrefsController < ApplicationController
  def index
    nums = [*(1..47)]
    @prefs = Pref.where(id: nums)
  end

  def show
    @pref = Pref.find(params[:id])
  end

end
