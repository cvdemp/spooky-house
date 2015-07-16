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
    @character = Character.find(params[:id]).update(game_id: params[:id])
    # @characters = Character.all
    @game = Game.find(params[:id])
    @characters = Character.all
  end

  def update
    @character = Character.update(game_id: params[:id])
    # you will have character info
    # you will have game info
    # @character.game = @game
    # if @character.save send elsewhere
  end

  protected

  def game_params
    params.require(:game).permit(:name)
  end
end
