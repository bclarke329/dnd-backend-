class AddColumnToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :party_id, :integer
  end
end
