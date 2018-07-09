# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# === DISPOSITION SEEDS ===

disposition_array = ["Burial", "Green Burial", "Burial at Sea", "Cremation", "Donate Body to Science", "Other"]

disposition_array.each do |disposition|
  Disposition.create(type: disposition)
end

# === EXPENSE SEEDS ===

#we should probably have a "specify" text field for options in this category
#specify would live in the Funeral Model?
expense_array = ["Trust", "Funeral Insurance", "Pre-need through Funeral Home", "Cemetery Plot Purchased", "Other"]

expense_array.each do |type|
  Expense.create(type: type)
end

# === SERVICE TYPE SEEDS ===

service_type_array = ["Traditional Funeral", "Viewing Only", "Graveside Only", "Witness Cremation", "Memorial Service", "Casual Gathering", "Other"]

service_type_array.each do |service_type|
  ServiceType.create(type: service_type)
end

# === RELIGION SEEDS ===

religion_array = ["Athiest", "Agnostic", "Buddhist", "Christian", "Hindu", "Islamic", "Jain", "Jewish", "Sikh"]

religion_array.each do |name|
  Religion.create(name: name)
end

#=== FUNERAL HOME SEEDS ===
