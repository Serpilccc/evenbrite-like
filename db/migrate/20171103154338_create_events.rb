class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.text :description
      t.datetime :date
      t.string :space
     

      t.timestamps
    end
  end
end
