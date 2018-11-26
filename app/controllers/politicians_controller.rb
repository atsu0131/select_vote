class PoliticiansController < ApplicationController
  def index
    @politicians = Politician.all
    @pref = Pref.find(params[:pref_id])
  end

  def show
    @politician = Politician.find(params[:id])
  end

  def new
    @pref = Pref.find(params[:pref_id])
    @politician = @pref.politicians.build
  end

  def edit
  end

  def update
  end

  def create
    @pref = Pref.find(params[:pref_id])
    @politician = @pref.politicians.build(politician_params)
    @politician.user_id = current_user.id

    if @politician.save
      redirect_to pref_politicians_path(@pref)
    else
      render :new
    end
  end

  private

  def politician_params
    params.require(:politician).permit(:user_id, :pref_id, :name, :pref)
  end
end
