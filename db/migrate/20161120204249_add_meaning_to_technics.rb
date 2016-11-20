class AddMeaningToTechnics < ActiveRecord::Migration
  def change
    add_column :technics, :meaning, :string
  end
end
