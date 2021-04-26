class ChangeSkillColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :characters, :skill, :alignment
  end
end
