class AddMeaningToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :meaning, :string
  end
end
