class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :addressable, polymorphic: true, index: true
      t.string :nickname
      t.string :address
      t.string :number
      t.string :complement
      t.string :building_name
      t.string :reference
      t.references :city, index: true, foreign_key: true
      t.references :state, index: true, foreign_key: true
      t.belongs_to :country, references: :states, index: true
      t.string :zipcode
      t.string :main_phone

      t.timestamps null: false
    end
    add_foreign_key :addresses, :states, column: :country_id
  end
end
