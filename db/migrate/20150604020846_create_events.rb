class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.timestamp :start
      t.timestamp :end
      t.string :address
      t.text :comment
      t.boolean :completed, default: false
      t.timestamp :completed_at
      t.timestamps null: false
    end
  end
end
