class ZonesController < ApplicationController
  def index
    nums = [*(1..15)]
    @zones = Zone.where(id: nums)
    @pref = Pref.find(params[:pref_id])
  end

  def show
    @pref = Pref.find(params[:pref_id])
    @zone = Zone.find(params[:id])
    @politicians = Politician.where(pref_id: @pref.id).where(zone_id: @zone.id)
    @vote_actions = VoteAction.all
  end

end