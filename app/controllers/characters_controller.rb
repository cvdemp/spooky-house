class CharactersController < ApplicationController
  before_action :require_login, only: [:new, :edit, :update, :delete]

  def index
    @characters = Character.all
    @character = Character.new
  end

  def create

  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    @character.user_id = current_user.id
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

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    if @character.update(character_params)
      flash[:notice] = "Character Updated!"
      redirect_to :back
    else
      flash[:notice] = @character.errors.full_messages.join(" ")
      render 'show'
    end
  end

  def destroy
    @character = Character.find(params[:id])
    Character.destroy(@character)

    flash[:notice] = 'Character Deleted'
    redirect_to characters_path
  end

  protected

  def character_params
    params.require(:character).permit(
                                      :id,
                                      :name,
                                      :user_id,
                                      :game_id,
                                      :birthday,
                                      :hobby1_id,
                                      :hobby2_id,
                                      :image
                                      )
  end

  def character_update_params
    params.permit( :id, :game_id)
  end

  private

  def require_login
    unless user_signed_in?
      flash[:error] = "You must be signed in to do that"
      redirect_to new_user_session_path
    end
  end


end
