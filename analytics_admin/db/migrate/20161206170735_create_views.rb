class CreateViews < ActiveRecord::Migration[5.0]
  def change
    create_table :views do |t|
      t.string :url
      t.datetime :visited_at
      t.references :visitor, foreign_key: true

      t.timestamps
    end
  end
end
