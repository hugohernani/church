class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.references :address, index: true, foreign_key: true
      t.time :initiate_at
      t.time :ending_at
      t.date :start_at
      t.date :finish_at

      t.timestamps null: false
    end
  end
end
