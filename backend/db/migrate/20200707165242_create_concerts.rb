class CreateConcerts < ActiveRecord::Migration[6.0]
  def change
    create_table :concerts do |t|
      t.string :date
      t.string :time
      t.string :location
      t.string :country
      t.string :event
      t.boolean :available
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
