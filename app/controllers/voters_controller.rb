class VotersController < ApplicationController
  def index
    @selection = Selection.find(params[:selection_id])
  end
end