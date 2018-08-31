# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

prices = ('10.00'..'99.00').to_a


30.times {
  product = Product.new(
    name: Faker::Food.dish,
    description: Faker::Food.description,
    price: prices.shuffle[0]
  )
  match = Product.find_by(name: product.name)
  if !match
    p product.price
    product.save
  end
}
