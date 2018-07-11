# === RELIGION SEEDS ===

religion_array = ["Unspecified", "Athiest", "Agnostic", "Buddhist", "Christian", "Hindu", "Islamic", "Jain", "Jewish", "Sikh"]

religion_array.each do |religion|
  Religion.create(name: religion)
end

#=== FUNERAL HOME SEEDS ===

FuneralHome.create(name: "Devol Funeral Home", phone:"(202) 333-6680", address: "2222 Wisconsin Ave NW, Washington, DC 20007")
FuneralHome.create(name: "Marshall-March Funeral Home DC", phone:"(202) 723-1250", address: "4217 9th St NW, Washington, DC 20011")
FuneralHome.create(name: "Taylor's Funeral Home", phone:"(202) 882-2732", address: "1722 North Capitol St NW, Washington, DC 20002")
FuneralHome.create(name: "Pinckney-Spangler Funeral Home", phone:"(202) 544-7720", address: " 524 8th St NE, Washington, DC 20002")

#=== USER SEEDS ===

User.create(username: "Oren", password: "test", email: "autoimpedicis@gmail.com")
User.create(username: "August", password: "test", email: "augustgiles8@gmail.com")
User.create(username: "Sam", password: "test", email: "sammy@sammy.com")
User.create(username: "Fatima", password: "test", email: "fatima@fatima.com")


#=== AGENT SEEDS ===

Agent.create(name: "SuzieQ", email: "DisisSuzie@whatever.com", user_id: 2)
Agent.create(name: "Joellen", email: "melonmelonmelon@whatever.com", user_id: 1)

#=== FUNERAL SEEDS ===

Funeral.create(disposition: "Cremation", disposition_expand: "I'm scared",
  officiant: "Pop", officiant_expand: "Popovich", eulogist_1: "Dad",
  eulogist_2: "Mom", eulogist_expand: "Make it fun",
  financial_plan: "Funeral Insurance",
  financial_plan_expand: "I'm not positive I actually have the insurance",
  service_type: "Traditional Funeral", service_type_expand: "But make it fun",
  religion_id: 2, religion_expand: "Very", funeral_home_id: 3,
  funeral_home_expand: "I think", general_expand: "I love you all")

Funeral.create(disposition: "Burial",
  officiant: "Bro", officiant_expand: "Broseph", eulogist_1: "Dad",
  eulogist_2: "Mom", eulogist_expand: "Make it fun",
  financial_plan: "Funeral Trust",
  service_type: "Traditional Funeral", service_type_expand: "But make it fun",
  religion_id: 1, funeral_home_id: 2, general_expand: "I love you all")

Funeral.create(disposition: "Green Burial",
  officiant: "Bro", officiant_expand: "Broseph", eulogist_1: "Dad",
  eulogist_2: "Mom", eulogist_expand: "Make it fun",
  financial_plan: "Funeral Trust",
  service_type: "Traditional Funeral", service_type_expand: "But make it fun",
  religion_id: 1, funeral_home_id: 2, general_expand: "I love you all")




#===
