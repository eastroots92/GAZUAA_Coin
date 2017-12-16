class CreateMycoins < ActiveRecord::Migration[5.1]
  def change
    create_table :mycoins do |t|
      t.string :category
      t.string :coinname
      t.string :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
