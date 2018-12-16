class VotersController < ApplicationController
  def index
    @selection = Selection.find(params[:selection_id])
    @voters = Voter.where(user_id: current_user).where(selection_id: @selection.id)
  end

  def new
    @selection = Selection.find(params[:selection_id])
    @voter = @selection.voters.build
    respond_to do |format|
      format.html{ redirect_to @voter, notice: 'User was successfully created.' }
      format.js {}
    end
  end

  def create
    @selection = Selection.find(params[:selection_id])
    @voter = @selection.voters.build(voter_params)
    @voter.user_id = current_user.id
    @voter.selection_id = @selection.id
    respond_to do |format|
      if @voter.save
        format.html { redirect_to selection_voters_path(@selection)}
      else
        format.html { render :new }
      end
    end
  end

  def show
    @selection = Selection.find(params[:selection_id])
    @voter = Voter.find(params[:id])
    @pref = Pref.find(params[:id])
    @politicians = Politician.all
    @vote_action = @voter.vote_actions.build
  end


  def destroy
    @voter = Voter.find(params[:id])
    @voter.destroy
    redirect_to selection_voters_path
  end

  private

  def voter_params
    params.require(:voter).permit(:user_id, :selection_id, :nickname, :pref_id, :politician_id)
  end

end
