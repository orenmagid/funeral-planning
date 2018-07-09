# === DISPOSITION SEEDS ===

# disposition_array = ["Burial", "Green Burial", "Burial at Sea", "Cremation", "Donate Body to Science", "Other"]
#
# disposition_array.each do |disposition|
#   Disposition.create(disposition_type: disposition)
# end
#
# # === EXPENSE SEEDS ===
#
# #we should probably have a "specify" text field for options in this category
# #specify would live in the Funeral Model?
# expense_array = ["Trust", "Funeral Insurance", "Pre-need through Funeral Home", "Cemetery Plot Purchased", "Other"]
#
# expense_array.each do |type|
#   Expense.create(type: type)
# end
#
# # === SERVICE TYPE SEEDS ===
#
# service_type_array = ["Traditional Funeral", "Viewing Only", "Graveside Only", "Witness Cremation", "Memorial Service", "Casual Gathering", "Other"]
#
# service_type_array.each do |service_type|
#   ServiceType.create(type: service_type)
# end

# === RELIGION SEEDS ===

religion_array = ["Athiest", "Agnostic", "Buddhist", "Christian", "Hindu", "Islamic", "Jain", "Jewish", "Sikh"]

religion_array.each do |name|
  Religion.create(name: name)
end

#=== FUNERAL HOME SEEDS ===

FuneralHome.create(name: "Devol Funeral Home", phone:"(202) 333-6680", address: "2222 Wisconsin Ave NW, Washington, DC 20007")
FuneralHome.create(name: "Marshall-March Funeral Home DC", phone:"(202) 723-1250", address: "4217 9th St NW, Washington, DC 20011")

#=== USER SEEDS ===

User.create(username: "Oren", password: "test", email: "autoimpedicis@gmail.com")
User.create(username: "August", password: "test", email: "augustgiles8@gmail.com")
