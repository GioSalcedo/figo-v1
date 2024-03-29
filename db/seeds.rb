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
  password_confirmation: "123456",
  first_name: "Fanny",
  last_name: "Vidal"
)

Business.create(
    user_id: 2,
    name: "Mango Biche",
    description: "Microempresa dedicada a la venta y distribucion de mango en la ciudad de Medellin"
)

Business.create(
    user_id: 2,
    name: "Vector Foods",
    description:"Una empresa dedicada a la creacion de snacks cuya propuesta  se enfoca en ingredientes diferenciadores premium como el aceite de aguacate y la sal rosada del Himalaya, entre otros, además de la rapidez con la que saben adaptarse a las nuevas necesidades de los consumidores"
)


Business.create(
  user_id: 2,
  name: "Natif by Issa Vásquez",
  description:" Empresa dedicada ala creacion de productos con pocos conservantes. Su meta es llegar a ser el pan saludable más consumido en todo el país, así como incursionar en todos los formatos de venta: retail, grandes cadenas, stands saludables, farmacias, entre otros."
)

Account.create(
  business_id: 1,
  name: "Cuenta de ahorro - Mango Biche",
  balance: 100000,
  currency: "COP"
)

Account.create(
  business_id: 1,
  name: "Bancolombia - Mango Biche",
  balance: 20000,
  currency: "COP"
)

Account.create(
  business_id: 1,
  name: "Efectivo - Mango Biche",
  balance: 500000,
  currency: "COP"
)
50.times do
 Earning.create(
  account_id: 1,
  balance: Faker::Number.within(range: 10000..10000000),
  currency: "COP",
  category: "Salario",
  date: Date.today,
  beneficiary: "Yo",
  note: "Pago de salario"
 )

 Egress.create(
  account_id: 1,
  balance: Faker::Number.within(range: 10000..10000000),
  currency: "COP",
  category: "Comida",
  date: Date.today,
  beneficiary: Faker::Name.name,
  note: "Pago de comida"
 )
end
  Debt.create(
    business_id: 1,
    name: "Deuda con el banco",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
  )

  Debt.create(
    business_id: 1,
    name: "Deuda servicios publicos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
  )

  Debt.create(
    business_id: 1,
    name: "Deuda de viaje",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
  )

  Debt.create(
    business_id: 1,
    name: "Deuda  de pago de nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
  )

  Debt.create(
    business_id: 1,
    name: "Deuda credito en Exito",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
  )

  Debt.create(
    business_id: 1,
    name: "Deudas con el provedor ",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
  )

  Saving.create(
    business_id: 1,
    name: "Ahorro para el negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de ahorro"
  )

  Saving.create(
    business_id: 1,
    name: "Aporte a salud y pension",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de salud y pension"
  )

  Saving.create(
    business_id: 1,
    name: "Compra de maquinarias",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Compra de enfriadores"
  )
  Saving.create(
    business_id: 1,
    name: "Ahorro para un viaje de negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "viaje a Santa Marta"
  )
  Saving.create(
    business_id: 1,
    name: "Compra de materiales",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "material para hacer el producto"
  )

  Saving.create(
    business_id: 1,
    name: "Ahorra para paga de nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de salario"
  )
  Budget.create(
    business_id: 1,
    name: "Presupuesto para el negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
  )

  Budget.create(
    business_id: 1,
    name: "Presupuesto para nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
  )

  Budget.create(
    business_id: 1,
    name: "Presupuesto para el arriendo",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
  )

  Budget.create(
    business_id: 1,
    name: "Presupuesto para los impuestos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
  )

  Budget.create(
    business_id: 1,
    name: "Presupuesto para viajes de trabajos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
  )

  Budget.create(
    business_id: 1,
    name: "Presupuesto para vacaciones",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
  )

Account.create(
  business_id: 2,
  name: "Cuenta de ahorro - Vector Foods",
  balance: 500000,
  currency: "COP"
)

Account.create(
  business_id: 2,
  name: "Bancolombia - Vector Foods",
  balance: 3000000,
  currency: "COP"
)

Account.create(
  business_id: 2,
  name: "Efectivo - Vector Foods",
  balance: 15000000,
  currency: "COP"
)
50.times do
 Earning.create(
  account_id: 2,
  balance: Faker::Number.within(range: 10000..10000000),
  currency: "COP",
  category: "Salario",
  date: Date.today,
  beneficiary: "Yo",
  note: "Pago de salario"
 )

 Egress.create(
  account_id: 2,
  balance: Faker::Number.within(range: 10000..10000000),
  currency: "COP",
  category: "Comida",
  date: Date.today,
  beneficiary: Faker::Name.name,
  note: "Pago de comida"
 )
end
  Debt.create(
    business_id: 2,
    name: "Deuda con el banco",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
  )

  Debt.create(
    business_id: 2,
    name: "Deuda servicios publicos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
  )

  Debt.create(
    business_id: 2,
    name: "Deuda de viaje",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
  )

  Debt.create(
    business_id: 2,
    name: "Deuda  de pago de nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
  )

  Debt.create(
    business_id: 2,
    name: "Deuda credito en Exito",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
  )

  Debt.create(
    business_id: 2,
    name: "Deudas con el provedor ",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
  )

  Saving.create(
    business_id: 2,
    name: "Ahorro para el negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de ahorro"
  )

  Saving.create(
    business_id: 2,
    name: "Aporte a salud y pension",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de salud y pension"
  )

  Saving.create(
    business_id: 2,
    name: "Compra de maquinarias",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Compra de enfriadores"
  )
  Saving.create(
    business_id: 2,
    name: "Ahorro para un viaje de negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "viaje a Santa Marta"
  )
  Saving.create(
    business_id: 2,
    name: "Compra de materiales",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "material para hacer el producto"
  )

  Saving.create(
    business_id: 2,
    name: "Ahorra para paga de nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de salario"
  )
  Budget.create(
    business_id: 2,
    name: "Presupuesto para el negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
  )

  Budget.create(
    business_id: 2,
    name: "Presupuesto para nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
  )

  Budget.create(
    business_id: 2,
    name: "Presupuesto para el arriendo",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
  )

  Budget.create(
    business_id: 2,
    name: "Presupuesto para los impuestos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
  )

  Budget.create(
    business_id: 2,
    name: "Presupuesto para viajes de trabajos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
  )

  Budget.create(
    business_id: 2,
    name: "Presupuesto para distribucion",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de envios"
  )

  Account.create(
    business_id: 3,
    name: "Cuenta de ahorro - Natif",
    balance: 100000,
    currency: "COP"
  )

  Account.create(
    business_id: 3,
    name: "Bancolombia - Natif",
    balance: 8000000,
    currency: "COP"
  )

  Account.create(
    business_id: 3,
    name: "Efectivo - Natif",
    balance: 16000000,
    currency: "COP"
  )
  50.times do
   Earning.create(
    account_id: 3,
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    category: "Salario",
    date: Date.today,
    beneficiary: "Yo",
    note: "Pago de salario"
   )

   Egress.create(
    account_id: 3,
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    category: "Comida",
    date: Date.today,
    beneficiary: Faker::Name.name,
    note: "Pago de comida"
   )
  end

    Debt.create(
      business_id: 3,
      name: "Deuda con el banco",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "Pago de deuda"
    )

    Debt.create(
      business_id: 3,
      name: "Deuda servicios publicos",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "Pago de deuda"
    )

    Debt.create(
      business_id: 3,
      name: "Deuda de viaje",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "Pago de deuda"
    )

    Debt.create(
      business_id: 3,
      name: "Deuda  de pago de nomina",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "Pago de deuda"
    )

    Debt.create(
      business_id: 3,
      name: "Deuda credito en Exito",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "Pago de deuda"
    )

    Debt.create(
      business_id: 3,
      name: "Deudas con el provedor ",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "Pago de deuda"
    )

    Saving.create(
      business_id: 3,
      name: "Ahorro para el negocio",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "Pago de ahorro"
    )

    Saving.create(
      business_id: 3,
      name: "Aporte a salud y pension",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "Pago de salud y pension"
    )

    Saving.create(
      business_id: 3,
      name: "Compra de maquinarias",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "Compra de hornos"
    )
    Saving.create(
      business_id: 3,
      name: "Ahorro para un viaje de negocio",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "viaje a Medellin"
    )
    Saving.create(
      business_id: 3,
      name: "Compra de materiales",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "material para hacer el producto"
    )

    Saving.create(
      business_id:3,
      name: "Ahorra para paga de nomina",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "Pago de salario"
    )
    Budget.create(
      business_id: 3,
      name: "Presupuesto para el negocio",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "Pago de presupuesto"
    )

    Budget.create(
      business_id: 3,
      name: "Presupuesto para nomina",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "Pago de presupuesto"
    )

    Budget.create(
      business_id: 3,
      name: "Presupuesto para el arriendo",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "Pago de local"
    )

    Budget.create(
      business_id: 3,
      name: "Presupuesto para los impuestos",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "Pago de impuestos"
    )

    Budget.create(
      business_id: 3,
      name: "Presupuesto para viajes de trabajos",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "Pago de viajes"
    )

    Budget.create(
      business_id: 3,
      name: "Presupuesto para distribucion",
      balance: Faker::Number.within(range: 10000..10000000),
      currency: "COP",
      date: Date.today,
      note: "Pago de envios"
    )


    User.create(
      email: "ceo@mangobiche.com",
      password: "12345678",
      password_confirmation: "12345678",
      first_name: "Alejandro",
      last_name: "De los Monteros"
    )

    Business.create(
      user_id: 1,
      name: "Mango Biche sede Envigado",
      description: "Microempresa dedicada a la venta y distribucion de mango en el departamento de Antioquia"
    )

    Account.create(
    business_id: 1,
    name: "Cuenta de ahorro - Mango Biche sede Envigado",
    balance: 1600000,
    currency: "COP"
      )

    Account.create(
    business_id: 1,
    name: "Bancolombia - Mango Biche sede Envigado",
    balance: 240000,
    currency: "COP"
   )

    Account.create(
    business_id: 1,
    name: "Efectivo - Mango Biche sede Envigado",
    balance: 9900000,
    currency: "COP"
    )

    50.times do
    Earning.create(
    account_id: 1,
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    category: "Salario",
    date: Date.today,
    beneficiary: "Yo",
    note: "Pago de salario"
       )

    Egress.create(
    account_id: 1,
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    category: "Comida",
    date: Date.today,
    beneficiary: Faker::Name.name,
    note: "Pago de comida"
    )
    end

    Debt.create(
    business_id: 1,
    name: "Deuda con el banco",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 1,
    name: "Deuda servicios publicos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 1,
    name: "Deuda de viaje",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 1,
    name: "Deuda  de pago de nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 1,
    name: "Deuda credito en Exito",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 1,
    name: "Deudas con el provedor ",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
     date: Date.today,
    note: "Pago de deuda"
    )

    Saving.create(
    business_id: 1,
    name: "Ahorro para el negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de ahorro"
    )

    Saving.create(
    business_id: 1,
    name: "Aporte a salud y pension",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de salud y pension"
    )

    Saving.create(
    business_id: 1,
    name: "Compra de maquinarias",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Compra de enfriadores"
    )

    Saving.create(
    business_id: 1,
    name: "Ahorro para un viaje de negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "viaje a Santa Marta"
    )

    Saving.create(
    business_id: 1,
    name: "Compra de materiales",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "material para hacer el producto"
    )

    Saving.create(
    business_id: 1,
    name: "Ahorra para paga de nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de salario"
    )

    Budget.create(
    business_id: 1,
    name: "Presupuesto para el negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 1,
    name: "Presupuesto para nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 1,
    name: "Presupuesto para el arriendo",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 1,
    name: "Presupuesto para los impuestos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 1,
    name: "Presupuesto para viajes de trabajos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 1,
    name: "Presupuesto para vacaciones",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Business.create(
      user_id: 2,
      name: "Mango Biche sede Rio Negro",
      description: "Microempresa dedicada a la venta y distribucion de mango en el departamento de Antioquia"
    )

    Account.create(
    business_id: 2,
    name: "Cuenta de ahorro - Mango Biche sede Rio Negro",
    balance: 100000,
    currency: "COP"
      )

    Account.create(
    business_id: 2,
    name: "Bancolombia - Mango Biche sede Rio Negro",
    balance: 20000,
    currency: "COP"
   )

    Account.create(
    business_id: 2,
    name: "Efectivo - Mango Biche sede Rio Negro",
    balance: 700000,
    currency: "COP"
    )

    50.times do
    Earning.create(
    account_id: 2,
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    category: "Salario",
    date: Date.today,
    beneficiary: "Yo",
    note: "Pago de salario"
       )

    Egress.create(
    account_id: 2,
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    category: "Comida",
    date: Date.today,
    beneficiary: Faker::Name.name,
    note: "Pago de comida"
    )
    end

    Debt.create(
    business_id: 2,
    name: "Deuda con el banco",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 2,
    name: "Deuda servicios publicos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 2,
    name: "Deuda de viaje",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 2,
    name: "Deuda  de pago de nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 2,
    name: "Deuda credito en Exito",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 2,
    name: "Deudas con el provedor ",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
     date: Date.today,
    note: "Pago de deuda"
    )

    Saving.create(
    business_id: 2,
    name: "Ahorro para el negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de ahorro"
    )

    Saving.create(
    business_id: 2,
    name: "Aporte a salud y pension",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de salud y pension"
    )

    Saving.create(
    business_id: 2,
    name: "Compra de maquinarias",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Compra de enfriadores"
    )

    Saving.create(
    business_id: 2,
    name: "Ahorro para un viaje de negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "viaje a Santa Marta"
    )

    Saving.create(
    business_id: 2,
    name: "Compra de materiales",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "material para hacer el producto"
    )

    Saving.create(
    business_id: 2,
    name: "Ahorra para paga de nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de salario"
    )

    Budget.create(
    business_id: 2,
    name: "Presupuesto para el negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 2,
    name: "Presupuesto para nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 2,
    name: "Presupuesto para el arriendo",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 2,
    name: "Presupuesto para los impuestos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 2,
    name: "Presupuesto para viajes de trabajos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 2 ,
    name: "Presupuesto para vacaciones",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Business.create(
      user_id: 3,
      name: "Mango Biche sede Marinilla",
      description: "Microempresa dedicada a la venta y distribucion de mango en el departamento de Antioquia"
    )

    Account.create(
    business_id: 3,
    name: "Cuenta de ahorro - Mango Biche sede Marinilla",
    balance: 1340000,
    currency: "COP"
      )

    Account.create(
    business_id: 3,
    name: "Bancolombia - Mango Biche sede Marinilla",
    balance: 250000,
    currency: "COP"
   )

    Account.create(
    business_id: 3,
    name: "Efectivo - Mango Biche sede Marinilla",
    balance: 8800000,
    currency: "COP"
    )

    50.times do
    Earning.create(
    account_id: 3,
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    category: "Salario",
    date: Date.today,
    beneficiary: "Yo",
    note: "Pago de salario"
       )

    Egress.create(
    account_id: 3,
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    category: "Comida",
    date: Date.today,
    beneficiary: Faker::Name.name,
    note: "Pago de comida"
    )
    end

    Debt.create(
    business_id: 3,
    name: "Deuda con el banco",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 3,
    name: "Deuda servicios publicos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 3,
    name: "Deuda de viaje",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 3,
    name: "Deuda  de pago de nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 3,
    name: "Deuda credito en Exito",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 3,
    name: "Deudas con el provedor ",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
     date: Date.today,
    note: "Pago de deuda"
    )

    Saving.create(
    business_id: 3,
    name: "Ahorro para el negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de ahorro"
    )

    Saving.create(
    business_id: 3,
    name: "Aporte a salud y pension",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de salud y pension"
    )

    Saving.create(
    business_id: 3,
    name: "Compra de maquinarias",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Compra de enfriadores"
    )

    Saving.create(
    business_id: 3,
    name: "Ahorro para un viaje de negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "viaje a Santa Marta"
    )

    Saving.create(
    business_id: 3,
    name: "Compra de materiales",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "material para hacer el producto"
    )

    Saving.create(
    business_id: 3,
    name: "Ahorra para paga de nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de salario"
    )

    Budget.create(
    business_id: 3,
    name: "Presupuesto para el negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 3,
    name: "Presupuesto para nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 3,
    name: "Presupuesto para el arriendo",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 3,
    name: "Presupuesto para los impuestos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 3,
    name: "Presupuesto para viajes de trabajos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 3,
    name: "Presupuesto para vacaciones",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Business.create(
      user_id: 4,
      name: "Mango Biche sede La Estrella",
      description: "Microempresa dedicada a la venta y distribucion de mango en el departamento de Antioquia"
    )

    Account.create(
    business_id: 4,
    name: "Cuenta de ahorro - Mango Biche sede La Estrella",
    balance: 1500000,
    currency: "COP"
      )

    Account.create(
    business_id: 4,
    name: "Bancolombia - Mango Biche sede La Estrella",
    balance: 90000,
    currency: "COP"
   )

    Account.create(
    business_id: 4,
    name: "Efectivo - Mango Biche sede La Estrella",
    balance: 1100000,
    currency: "COP"
    )

    50.times do
    Earning.create(
    account_id: 4,
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    category: "Salario",
    date: Date.today,
    beneficiary: "Yo",
    note: "Pago de salario"
       )

    Egress.create(
    account_id: 4,
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    category: "Comida",
    date: Date.today,
    beneficiary: Faker::Name.name,
    note: "Pago de comida"
    )
    end

    Debt.create(
    business_id: 4,
    name: "Deuda con el banco",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 4,
    name: "Deuda servicios publicos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 4,
    name: "Deuda de viaje",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 4,
    name: "Deuda  de pago de nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 4,
    name: "Deuda credito en Exito",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de deuda"
    )

    Debt.create(
    business_id: 4,
    name: "Deudas con el provedor ",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
     date: Date.today,
    note: "Pago de deuda"
    )

    Saving.create(
    business_id: 4,
    name: "Ahorro para el negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de ahorro"
    )

    Saving.create(
    business_id: 4,
    name: "Aporte a salud y pension",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de salud y pension"
    )

    Saving.create(
    business_id: 4,
    name: "Compra de maquinarias",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Compra de enfriadores"
    )

    Saving.create(
    business_id: 4,
    name: "Ahorro para un viaje de negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "viaje a Santa Marta"
    )

    Saving.create(
    business_id: 4,
    name: "Compra de materiales",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "material para hacer el producto"
    )

    Saving.create(
    business_id: 4,
    name: "Ahorra para paga de nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de salario"
    )

    Budget.create(
    business_id: 4,
    name: "Presupuesto para el negocio",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 4,
    name: "Presupuesto para nomina",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 4,
    name: "Presupuesto para el arriendo",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 4,
    name: "Presupuesto para los impuestos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 4,
    name: "Presupuesto para viajes de trabajos",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )

    Budget.create(
    business_id: 4,
    name: "Presupuesto para vacaciones",
    balance: Faker::Number.within(range: 10000..10000000),
    currency: "COP",
    date: Date.today,
    note: "Pago de presupuesto"
    )
