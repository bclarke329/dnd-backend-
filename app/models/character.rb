class Character < ApplicationRecord
    belongs_to :party, optional: true
    validates :name, uniqueness: true
end
