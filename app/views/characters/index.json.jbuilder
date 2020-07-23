json.array! @characters do |character|
  json.id character.id
  json.name character.name
  json.status character.status
  json.nickname character.nickname
  json.portrayed character.portrayed
  json.img character.img
  if character.image.attached?
    json.image polymorphic_url(character.image)
  end
end
