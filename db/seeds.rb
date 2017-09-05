# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Utility.create(name: 'Electricity', provider: 'Escom')
Utility.create(name: 'Electricity', provider: 'Solar power')
Utility.create(name: 'Electricity', provider: 'Windmill')
Utility.create(name: 'Water', provider: 'Blantyre water Board')
Utility.create(name: 'Water', provider: 'Lilongwe water Board')
Utility.create(name: 'Water', provider: 'Northern region water Board')
Utility.create(name: 'Water', provider: 'Central region water Board')
Utility.create(name: 'Water', provider: 'Southern region water Board')
Utility.create(name: 'Water', provider: 'Other')
Utility.create(name: 'internet', provider: 'Access')
Utility.create(name: 'internet', provider: 'Broad Band')
Utility.create(name: 'internet', provider: 'Globle internet')
Utility.create(name: 'internet', provider: 'MTL')
Utility.create(name: 'internet', provider: 'TNM')
Utility.create(name: 'internet', provider: 'Airtel')

Service.create(name: 'Surgery')
Service.create(name: 'family planning')
Service.create(name: 'Maternity')
Service.create(name: 'Dental')
