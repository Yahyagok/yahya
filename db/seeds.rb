# Employee.destroy_all
# Manager.destroy_all
# Department.destroy_all


adviser1 = Adviser.create(name:"Melissa", grad_university: "Brooklyn Collage", has_car: true )
adviser2 = Adviser.create(name:"Yahya", grad_university: "Cumhuriyet University", has_car: true )
adviser3 = Adviser.create(name:"Miranda", grad_university: "City Collage", has_car: false )

city1 = City.create(name:"New York", num_of_parks: 1800, population_in_million: 8 )
city2 = City.create(name:"Miami", num_of_parks: 263, population_in_million: 1 )
city3 = City.create(name:"Boston", num_of_parks: 217, population_in_million: 1 )

school1 = School.create(adviser_id: adviser1.id , city_id:city2.id, num_of_teachers:25 , num_of_employees: 30, num_of_classes: 23)
school2 = School.create(adviser_id: adviser2.id , city_id:city1.id, num_of_teachers:20 , num_of_employees: 23, num_of_classes: 19)
school3 = School.create(adviser_id: adviser3.id , city_id:city3.id, num_of_teachers:19 , num_of_employees: 24, num_of_classes: 22)


student1 = Student.create(adviser_id: adviser1.id, name: "Jake", has_cellphone:true, naughty: true)
student2 = Student.create(adviser_id: adviser2.id, name: "Brianna", has_cellphone:false, naughty: false)
student3 = Student.create(adviser_id: adviser3.id, name: "Mike", has_cellphone:true, naughty: true)


