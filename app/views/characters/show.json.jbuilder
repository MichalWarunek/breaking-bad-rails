json.extract! @character, :id, :name, :status, :nickname, :portrayed, :img
if @character.image.attached?
  json.image polymorphic_url(@character.image)
end