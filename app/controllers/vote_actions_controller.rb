class VoteActionsController < ApplicationController
  def create
    @selection = Selection.find(params[:selection_id])
    @voter = Voter.find(params[:voter_id])
    @politician = Politician.find(params[:politician_id])
    @vote_action = @voter.vote_actions.create(politician_id: @politician.id, selection_id: @selection.id)
    redirect_to selection_voters_url, notice: "登録しました"
  end

  def destroy
    @voter = Voter.find(params[:voter_id])
    @vote_action = @voter.vote_actions.destroy
    redirect_to selection_voters_url, notice: "解除しました"
  end
end