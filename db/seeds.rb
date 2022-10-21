# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(
  email: "lewagon@lewagon.com",
  password: "123456",
  password_confirmation: "123456"
)



2.times do
  Business.create(
    user_id: 1,
    name: Faker::Company.name,
    description: Faker::Company.catch_phrase,
    logo: Faker::Company.logo
  )
end


Account.create(
  business_id: 1,
  name: "Cuenta de ahorro",
  balance: 100000,
  currency: "COP"
)

 Earning.create(
  account_id: 1,
  balance: 100000,
  currency: "COP",
  category: "Salario",
  date: Date.today,
  beneficiary: "Lewagon",
  note: "Pago de salario"
 )

 Egress.create(
  account_id: 1,
  balance: 50000,
  currency: "COP",
  category: "Comida",
  date: Date.today,
  beneficiary: "Comida",
  note: "Pago de comida"
 )

  Debt.create(
    business_id: 1,
    name: "Deuda con el banco",
    balance: 50000,
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
  )

  Saving.create(
    business_id: 1,
    name: "Ahorro para el negocio",
    balance: 50000,
    currency: "COP",
    date: Date.today,
    note: "Pago de ahorro"
  )

  Budget.create(
    business_id: 1,
    name: "Presupuesto para el negocio",
    balance: 50000,
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
  )

  Banking.create(
    business_id: 1,
    earning_id: 1,
    egress_id: 1
  )
