class Party < ApplicationRecord
    has_many :characters
    # validates :name, uniqueness: true
end
