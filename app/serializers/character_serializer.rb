class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :race, :alignment, :primary_weapon, :secondary_weapon
end
