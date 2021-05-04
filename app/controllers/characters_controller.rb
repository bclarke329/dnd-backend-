class CharactersController < ApplicationController
  
  include ActionController::RequestForgeryProtection
  protect_from_forgery with: :exception, unless: -> { request.format.json? }

  before_action :set_character, only: [:show, :update, :destroy]
  # GET /characters
  def index
    characters = Character.all

    render json: characters
  end

  # GET /characters/1
  def show
    character = character.find(params[:id])
    render json: @character
  end

  # POST /characters
  def create
    party = Party.find_or_create_by(params[:id])
    character = Character.new(character_params)
    character.party = party
    character.save
    if character.save
      render json: character, status: :created, location: character
    else
      render json: character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /characters/1
  def update
    if character.update(character_params)
      render json: character
    else
      render json: character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /characters/1
  def destroy
    character.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      character = Character.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def character_params
      params.require(:character).permit(:name, :race, :character_class, :alignment, :primary_weapon, :secondary_weapon, :party_id)
    end
end
