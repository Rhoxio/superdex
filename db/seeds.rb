# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Images go up to 807
  begin
    (1..807).to_a.each do |id|
      data = PokeApi.get(pokemon: id)
      p Pokemon.create(name: data.name, national_id: data.id.to_i, image_url: "https://pokeres.bastionbot.org/images/pokemon/#{data.id}.png")
    end
  rescue
    p "messed up"
  end
