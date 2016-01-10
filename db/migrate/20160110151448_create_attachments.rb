class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :title
      t.text :description
      t.references :attachable, polymorphic: true, index: true
      t.string :file_id
      t.string :file_filename
      t.string :file_content_type
      t.string :file_size
      t.string :type

      t.timestamps null: false
    end
    add_index :attachments, :type
  end
end
