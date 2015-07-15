class CharactersController < ApplicationController
  def index
    @characters = Character.all
    @character = Character.new
  end

  def create
    
  end

  def show
    @character = Character.find(params[:id])
  end

  protected

  def character_params
    params.require(:character).permit(:name, :user_id)
  end
end
