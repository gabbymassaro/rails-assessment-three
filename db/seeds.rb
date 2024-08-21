# db/seeds.rb

Pizzeria.destroy_all
Pizza.destroy_all

puts "Seeding Pizzzerias...🌱"
pizzeria1 = Pizzeria.create!(
  name: "Mario's Pizza",
  address: "123 Pizza Lane, New York, NY"
)
pizzeria2 = Pizzeria.create!(
  name: "Luigi's Pizzeria",
  address: "456 Dough Street, Brooklyn, NY"
)
pizzeria3 = Pizzeria.create!(
  name: "Pepperoni Palace",
  address: "789 Crust Avenue, Queens, NY"
)

puts "Seeding Pizzas...🌱"
Pizza.create!(
  name: "Margherita",
  description: "Classic pizza with fresh mozzarella, tomatoes, and basil.",
  pizzeria: pizzeria1
)

Pizza.create!(
  name: "Pepperoni",
  description: "Loaded with spicy pepperoni slices and mozzarella cheese.",
  pizzeria: pizzeria2
)

Pizza.create!(
  name: "BBQ Chicken",
  description: "Grilled chicken, BBQ sauce, red onions, and cilantro.",
  pizzeria: pizzeria3
)

Pizza.create!(
  name: "Veggie Delight",
  description: "A healthy mix of bell peppers, onions, mushrooms, and olives.",
  pizzeria: pizzeria1
)

Pizza.create!(
  name: "Hawaiian",
  description: "A sweet and savory mix of ham, pineapple, and mozzarella.",
  pizzeria: pizzeria2
)

Pizza.create!(
  name: "Four Cheese",
  description: "A blend of mozzarella, parmesan, gorgonzola, and ricotta.",
  pizzeria: pizzeria3
)
