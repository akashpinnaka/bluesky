class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :jump_discipline
      t.references :load, foreign_key: true

      t.timestamps
    end
  end
end
