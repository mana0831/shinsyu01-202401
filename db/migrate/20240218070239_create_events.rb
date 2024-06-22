class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.date :event_date
      t.datetime :event_at
      t.text :discription
      t.string :picture
      t.integer :point
      t.integer :people
      t.integer :people_remaining
      t.integer :people_participants
      t.text :name
      t.boolean :outside
      t.boolean :house

      t.timestamps
    end
  end
end
