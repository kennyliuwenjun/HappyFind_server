Supplier.destroy_all
s1 = Supplier.create :email => 'tim@ga', :password => 'chiken', :name => 'Tim'
s2 = Supplier.create :email => 'kenny@ga', :password => 'chiken', :name => 'Kenny'
s3 = Supplier.create :email => 'lucas@ga', :password => 'chiken', :name => 'Lucas'
s4 = Supplier.create :email => 'robert@ga', :password => 'chiken', :name => 'Robert'
s5 = Supplier.create :email => 'john@ga', :password => 'chiken', :name => 'John'
s6 = Supplier.create :email => 'joel@ga', :password => 'chiken', :name => 'Joel'

SkillCategory.destroy_all
sc1 = SkillCategory.create :name => 'Cook'
sc2 = SkillCategory.create :name => 'Paint'
sc3 = SkillCategory.create :name => 'Driver'
sc4 = SkillCategory.create :name => 'Plumber'
sc5 = SkillCategory.create :name => 'Tutor'
sc6 = SkillCategory.create :name => 'Electrician'
sc7 = SkillCategory.create :name => 'Programmer'

Service.destroy_all
se1 = Service.create :supplier_id => s2.id, :skill_category_id => sc1.id, :price => 5 #Kenny Cook $5
se2 = Service.create :supplier_id => s2.id, :skill_category_id => sc7.id, :price => 10 #Kenny  Programmer $10
se3 = Service.create :supplier_id => s2.id, :skill_category_id => sc3.id, :price => 7 #Kenny Driver $7
se4 = Service.create :supplier_id => s5.id, :skill_category_id => sc7.id, :price => 20 #John Programmer $20
se5 = Service.create :supplier_id => s1.id, :skill_category_id => sc7.id, :price => 20 #Tim Programmer $20
se6 = Service.create :supplier_id => s3.id, :skill_category_id => sc7.id, :price => 10 #Lucas Programmer $10
se7 = Service.create :supplier_id => s3.id, :skill_category_id => sc2.id, :price => 5 #Lucas Painter $5
se8 = Service.create :supplier_id => s6.id, :skill_category_id => sc4.id, :price => 1 #Joel Plumber $1

Order.destroy_all
o1 = Order.create :date => DateTime.new(2018,3,8), :hours => 48
o2 = Order.create :date => DateTime.new(2018,2,8), :hours => 2
o3 = Order.create :date => DateTime.new(2018,1,8), :hours => 5
o4 = Order.create :date => DateTime.new(2018,1,7), :hours => 0.5

se1.orders << o1 #Order for Kenny Cook $5 for 48 hours
se2.orders << o2 #Order for Kenny Programmer $10 for 2 hours
se3.orders << o3 #Order for Kenny Driver $7 for 5 hours
se4.orders << o4 #Order for John Programer $20 for 0.5 hours
