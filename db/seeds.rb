# === RELIGION SEEDS ===

religion_array = ["Athiest", "Agnostic", "Buddhist", "Christian", "Hindu", "Islamic", "Jain", "Jewish", "Sikh"]

religion_array.each do |religion|
  Religion.create(name: religion)
end

#=== FUNERAL HOME SEEDS ===

FuneralHome.create(name: "Devol Funeral Home", phone:"(202) 333-6680", address: "2222 Wisconsin Ave NW, Washington, DC 20007")
FuneralHome.create(name: "Marshall-March Funeral Home DC", phone:"(202) 723-1250", address: "4217 9th St NW, Washington, DC 20011")

#=== USER SEEDS ===

User.create(username: "Oren", password: "test", email: "autoimpedicis@gmail.com")
User.create(username: "August", password: "test", email: "augustgiles8@gmail.com")


#=== AGENT SEEDS ===

Agent.create(name: "SuzieQ", email: "DisisSuzie@whatever.com", user_id: 2)
Agent.create(name: "Joellen", email: "melonmelonmelon@whatever.com", user_id: 1)

#=== 
