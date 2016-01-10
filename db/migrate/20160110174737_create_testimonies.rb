class CreateTestimonies < ActiveRecord::Migration
  def change
    create_table :testimonies do |t|
      t.text :content
      t.string :author
      t.string :profession

      t.timestamps null: false
    end
  end
end
