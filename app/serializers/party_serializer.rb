class PartySerializer < ActiveModel::Serializer
  attributes :id, :party_name, :character_ids
  has_many :characters
end
