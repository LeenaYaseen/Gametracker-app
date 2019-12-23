class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :company, null: false, foreign_key: true
      t.string :title
      t.string :genre
      t.string :cover
      t.boolean :status

      t.timestamps
    end
  end
end
