class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.datetime :start_date
      t.integer :price
      t.integer :duration
      t.string :title
      t.text :description
      t.string :location
      t.belongs_to :organiser, index: true

      t.timestamps
    end
  end
end
