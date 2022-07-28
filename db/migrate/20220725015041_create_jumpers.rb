class CreateJumpers < ActiveRecord::Migration[5.2]
  def change
    create_table :jumpers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :emergency_phone
      t.string :license_number
      t.integer :dz_jump_count
      t.belongs_to :group, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
