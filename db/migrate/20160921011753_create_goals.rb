class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string :description
      t.boolean :completed
      t.date :by_when
      t.integer :member_id

      t.timestamps
    end
  end
end
