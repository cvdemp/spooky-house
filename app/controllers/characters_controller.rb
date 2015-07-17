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

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    if @character.update(character_params)
      flash[:notice] = "Character Added!"
      redirect_to games_path
    else
      flash[:notice] = @character.errors.full_messages.join(" ")
      render 'show'
    end
  end

  protected

  def character_params
  params.require(:character).permit(:name,
                                    :user_id,
                                    :game_id,
                                    :birthday,
                                    :hobby1_id,
                                    :hobby2_id
                                    )
  end

  private

  def require_login
    unless user_signed_in?
      flash[:error] = "You must be signed in to do that"
      redirect_to new_user_session_path
    end
  end

  SPEED_ARRAY_1 = [0, 2, 3, 3, 4, 5, 6, 7, 7]
  SPEED_ARRAY_2 = [0, 3, 4, 4, 4, 5, 6, 7, 8]
  SPEED_ARRAY_3 = [0, 3, 3, 4, 5, 6, 6, 7, 8]
  SPEED_ARRAY_4 = [0, 4, 4, 4, 5, 6, 7, 7, 8]

  SANITY_ARRAY_1 = [0, 2, 3, 3, 4, 5, 6, 7, 7]
  SANITY_ARRAY_2 = [0, 3, 4, 4, 4, 5, 6, 7, 8]
  SANITY_ARRAY_3 = [0, 3, 4, 5, 5, 6, 6, 7, 8]
  SANITY_ARRAY_4 = [0, 4, 4, 4, 5, 6, 7, 7, 8]

  KNOWLEDGE_ARRAY_1 = [0, 2, 3, 3, 4, 5, 6, 7, 7]
  KNOWLEDGE_ARRAY_2 = [0, 3, 4, 4, 4, 5, 6, 7, 8]
  KNOWLEDGE_ARRAY_3 = [0, 3, 4, 5, 5, 6, 6, 7, 8]
  KNOWLEDGE_ARRAY_4 = [0, 4, 4, 4, 5, 6, 7, 7, 8]

  MIGHT_ARRAY_1 = [0, 2, 3, 3, 4, 5, 6, 7, 7]
  MIGHT_ARRAY_2 = [0, 3, 4, 4, 4, 5, 6, 7, 8]
  MIGHT_ARRAY_3 = [0, 3, 4, 5, 5, 6, 6, 7, 8]
  MIGHT_ARRAY_4 = [0, 4, 4, 4, 5, 6, 7, 7, 8]

  def speed(character)
    if 0 < character.birthday.month && character.birthday.month < 4
      speed_array = SPEED_ARRAY_1
    elsif  4 <= character.birthday.month && character.birthday.month < 7
      speed_array = SPEED_ARRAY_2
    elsif  7 <= character.birthday.month && character.birthday.month < 10
      speed_array = SPEED_ARRAY_3
    else
      speed_array = SPEED_ARRAY_4
    end
  end

  def sanity(character)
    if 0 < character.birthday.day && character.birthday.day < 7
      sanity_array = SANITY_ARRAY_1
    elsif 7 <= character.birthday.day && character.birthday.day < 15
      sanity_array = SANITY_ARRAY_2
    elsif 15 <= character.birthday.day && character.birthday.day < 23
      sanity_array = SANITY_ARRAY_3
    else
      sanity_array = SANITY_ARRAY_4
    end
  end

  def knowledge(character)
    if 0 < character.hobby1_id && character.hobby1_id < 4
      knowledge_array = KNOWLEDGE_ARRAY_1
    elsif  4 <= character.hobby1_id && character.hobby1_id < 7
      knowledge_array = KNOWLEDGE_ARRAY_2
    elsif  7 <= character.hobby1_id && character.hobby1_id < 10
      knowledge_array = KNOWLEDGE_ARRAY_3
    else
      knowledge_array = KNOWLEDGE_ARRAY_4
    end
  end

  def might(character)
    if 0 < character.hobby2_id && character.hobby2_id < 4
      might_array = MIGHT_ARRAY_1
    elsif  4 <= character.hobby2_id && character.hobby2_id < 7
      might_array = MIGHT_ARRAY_2
    elsif  7 <= character.hobby2_id && character.hobby2_id < 10
      might_array = MIGHT_ARRAY_3
    else
      might_array = MIGHT_ARRAY_4
    end
  end

  helper_method :speed, :sanity, :knowledge, :might
end
