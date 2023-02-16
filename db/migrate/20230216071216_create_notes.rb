class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :note

      t.timestamps
    end
  end
end
