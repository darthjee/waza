class CreateFases < ActiveRecord::Migration
  def change
    create_table :fases do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
