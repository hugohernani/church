class AddReferenceToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :attachment, index: true, foreign_key: true
  end
end
