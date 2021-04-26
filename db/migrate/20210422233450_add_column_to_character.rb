class AddColumnToCharacter < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :skill, :string
    add_column :characters, :secondary_weapon, :string
  end
end
