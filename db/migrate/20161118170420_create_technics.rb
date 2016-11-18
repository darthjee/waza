class CreateTechnics < ActiveRecord::Migration
  def change
    create_table :technics do |t|
      t.belongs_to :category, index: true, foreign_key: true
      t.belongs_to :fase, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
