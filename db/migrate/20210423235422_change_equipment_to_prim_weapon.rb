class ChangeEquipmentToPrimWeapon < ActiveRecord::Migration[6.1]
  def change
    rename_column :characters, :equipment, :primary_weapon
  end
end
