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

Business.create(
    user_id: 1,
    name: "Mango Biche",
    description: "Microempresa dedicada a la venta y distribucion de mango en la ciudad de Medellin"
)

Business.create(
    user_id: 1,
    name: "Vector Foods",
    description:"Una empresa dedicada a la creacion de snacks cuya propuesta  se enfoca en ingredientes diferenciadores premium como el aceite de aguacate y la sal rosada del Himalaya, entre otros, además de la rapidez con la que saben adaptarse a las nuevas necesidades de los consumidores"
)


Business.create(
  user_id: 1,
  name: "Natif by Issa Vásquez",
  description:" Empresa dedicada ala creacion de productos con pocos conservantes. Su meta es llegar a ser el pan saludable más consumido en todo el país, así como incursionar en todos los formatos de venta: retail, grandes cadenas, stands saludables, farmacias, entre otros."
)

Account.create(
  business_id: 1,
  name: "Cuenta de ahorro",
  balance: 100000,
  currency: "COP"
)

Account.create(
  business_id: 1,
  name: "Bancolombia",
  balance: 20000,
  currency: "COP"
)

Account.create(
  business_id: 1,
  name: "Efectivo",
  balance: 500000,
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
  earning_id: 1,
  egress_id: 1,
  user_id: 1
)
