class Api::V1::CharactersController < ApplicationController
  def index
    @characters = Character.where(deleted: false)
    render 'characters/index.json.jbuilder'
  end

  def show
    @character = Character.find(params[:id])
    render 'characters/show.json.jbuilder'
  end

  def destroy
    @character = Character.find(params[:id])
    @character.update_attribute(:deleted, true)
  end

  # def create
  #    @character.save
  # end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
  end

  private

  def character_params
    params.require(:character).permit(:id, :status, :nickname, :portrayed, :img, :name)
  end
end
