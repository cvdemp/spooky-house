class CharactersController < ApplicationController
  before_action :require_login, only: [:new, :edit, :update]

  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      flash[:notice] = "Character created!"
      redirect_to games_path
    else
      flash[:notice] = @character.errors.full_messages.join(". ")
      render 'new'
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.new(params[:id])
    if @character.update(character_params)
      flash[:notice] = "Character Added!"
    else
      flash[:notice] = @character.errors.full_messages.join(" ")
    end
  end

  protected

  def character_params
    params.require(:character).permit(
                                      :name,
                                      :user_id,
                                      :game_id,
                                      :birthday,
                                      :hobby_1,
                                      :hobby_2
                                      )
  end

  private

  def require_login
    unless user_signed_in?
      flash[:error] = "You must be signed in to do that"
      redirect_to new_user_session_path
    end
  end
end
