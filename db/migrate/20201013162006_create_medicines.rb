class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :user_id
      t.string :name
      t.integer :dose
      t.string :frequency
    end
  end
end
