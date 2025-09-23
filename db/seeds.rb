require 'faker'

# test = Supplier.create(
#   name: "Nike",
#   email: "info@nike.com",
#   phone: "(800)123-1234"
# )

# product = Product.create(
#   title: "Kobe 6",
#   price: 150,
#   description: "Kobe's shoes",
#   size: 12,
#   supplier: test
#   # supplier_id: supplier.id
# )

i = 1
5.times do
  supplier = Supplier.create(
    name: Faker::Company.name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number
  )

  product = Product.create(
    title: "Product #{i}",
    price: i * 10,
    description: "Product #{i}'s description",
    size: i + 10,
    supplier_id: supplier.id
  )

  puts "Created #{supplier.name}"
  puts "Created #{product.title}"
  i += 1
end

# puts "5 Suppliers created"


