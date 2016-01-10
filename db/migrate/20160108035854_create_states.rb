class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.string :abbr
      t.string :type

      t.timestamps null: false
    end
    add_index :states, :type
  end
end
