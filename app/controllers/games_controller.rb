class GamesController < ApplicationController
  before_action :require_login, only: [:new, :edit, :update, :delete]

  def index
    @games = Game.all.order(created_at: :desc)
    @game = Game.new
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      flash[:notice] = "Game created!"
      redirect_to games_path
    else
      flash[:notice] = @game.errors.full_messages.join(". ")
      render new
    end
  end

  def show
    @game = Game.find(params[:id])
    @characters = Character.where(game: nil)
    @character = Character.new
  end

  def update
    @game = Game.id
    @character.game = @game
  end

  protected

  def game_params
    params.require(:game).permit(:id, :name)
  end

  private

  def require_login
    unless user_signed_in?
      flash[:error] = "You must be signed in to do that"
      redirect_to new_user_session_path
    end
  end
end
