require 'faker'

10.times do 
    Weapon.create(name: Faker::Games::DnD.melee_weapon)
end 