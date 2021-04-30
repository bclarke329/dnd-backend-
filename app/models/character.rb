class Character < ApplicationRecord
    belongs_to :party
    validates: :name, uniqueness: true
end
