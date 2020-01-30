class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :national_id
      t.string :image_url

      t.timestamps
    end
  end
end
