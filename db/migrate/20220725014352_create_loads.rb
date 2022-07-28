class CreateLoads < ActiveRecord::Migration[5.2]
  def change
    create_table :loads do |t|
      t.string :pilot_name
      t.datetime :departs_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
