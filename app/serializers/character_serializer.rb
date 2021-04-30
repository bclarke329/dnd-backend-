class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :race, :alignment, :primary_weapon, :secondary_weapon, :party_id
  belongs_to :party
end
