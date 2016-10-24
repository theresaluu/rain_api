class CreateEgos < ActiveRecord::Migration[5.0]
  def change
    create_table :egos do |t|
      t.string :recognize, null: false
      t.text :investigate, null: false
      t.boolean :nurtured

      t.timestamps
    end
  end
end
