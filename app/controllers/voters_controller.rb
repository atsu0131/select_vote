class VotersController < ApplicationController
  def index
    @selection = Selection.find(params[:selection_id])
    @voters = Voter.where(user_id: current_user)
  end

  def new
    @selection = Selection.find(params[:selection_id])
    @voter = @selection.voters.build
  end

  def create
    @selection = Selection.find(params[:selection_id])
    @voter = @selection.voters.build
    @voter.user_id = current_user.id
    @voter.selection_id = @selection.id

    if @voter.save
      redirect_to selection_voters_path(@selection)
    else
      render :new
    end
  end


  def destroy
    @voter = Voter.find(params[:id])
    @voter.destroy
    redirect_to selection_voters_path
  end

  private

  def voter_params
    params.require(:voter).permit(:user_id, :selection_id, :nickname)
  end

end
