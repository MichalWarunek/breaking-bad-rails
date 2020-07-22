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

  def create
     @character = Character.new(character_params)
     @character.save
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
  end

  def attach_image
    @character = Character.find(params[:id])
    @character.image.attach(params[:image])
  end

  private

  def character_params
    params.require(:character).permit(:id, :status, :nickname, :portrayed, :img, :name, :image)
  end
end
