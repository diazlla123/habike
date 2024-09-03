
# db/seeds.rb

# Create 10 Users
users = 10.times.map do |i|
  User.create!(
    email: "user#{i+1}@example.com",
    password: "password#{i+1}",   # Use `password` instead of `encrypted_password`
    password_confirmation: "password#{i+1}"
  )
end

# Create 10 Bikes, each associated with a different user
bikes = [
  { model: "Harley-Davidson Street 750", year: 2022, description: "A powerful cruiser with a classic look", kilometers: 500, price: 7500.00, category: "Cruiser" },
  { model: "Ducati Panigale V4", year: 2023, description: "A high-performance sports bike", kilometers: 300, price: 25000.00, category: "Sport" },
  { model: "Honda CB500X", year: 2021, description: "A versatile adventure bike", kilometers: 1200, price: 7000.00, category: "Adventure" },
  { model: "Yamaha MT-07", year: 2020, description: "A lightweight naked bike", kilometers: 1500, price: 6500.00, category: "Naked" },
  { model: "Kawasaki Ninja 400", year: 2022, description: "A beginner-friendly sports bike", kilometers: 800, price: 5000.00, category: "Sport" },
  { model: "BMW R1250GS", year: 2023, description: "A premium adventure touring bike", kilometers: 200, price: 21000.00, category: "Adventure" },
  { model: "Triumph Bonneville T120", year: 2021, description: "A modern classic bike with retro styling", kilometers: 400, price: 12000.00, category: "Classic" },
  { model: "Suzuki GSX-R1000", year: 2020, description: "A high-performance superbike", kilometers: 2200, price: 15000.00, category: "Sport" },
  { model: "Indian Scout Bobber", year: 2023, description: "A stylish cruiser with a low-slung profile", kilometers: 100, price: 13000.00, category: "Cruiser" },
  { model: "KTM 390 Duke", year: 2021, description: "A fun and nimble street bike", kilometers: 900, price: 5500.00, category: "Naked" }
]

bikes.each_with_index do |bike_data, i|
  Bike.create!(
    model: bike_data[:model],
    year: bike_data[:year],
    description: bike_data[:description],
    kilometers: bike_data[:kilometers],
    price: bike_data[:price],
    category: bike_data[:category],
    user_id: users[i].id
  )
end
