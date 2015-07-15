class GamesController < ApplicationController
  def index
    @games = Game.all
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
    @characters = Character.all
  end

  protected

  def game_params
    params.require(:game).permit(:name)
  end

end
