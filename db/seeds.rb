# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: 'super', email: 'super@gmail.com', password: 'super', type: 'superadmin')
User.create(name: 'admin', email: 'admin@gmail.com', password: 'admin', type: 'admin')
User.create(name: 'instructor', email: 'instructor@gmail.com', password: 'instructor', type: 'instructor')
User.create(name: 'student', email: 'student@gmail.com', password: 'student', type: 'student')
Course.create(course_number: 'CSC517', title: 'OODD', description: 'Object Oriented Design and Development',start_date: '06/01/2016',
              end_date: '07/05/2016',status: 'active',user_id: '3')
Enrollment.create(grade: '-',course_id: '1',user_id: '4', status: 'enrolled')
Material.create(course_id: '1',content: 'Welcome to CSC 517')
Material.create(course_id: '1',content: 'Classes start from 06/01/2016')
