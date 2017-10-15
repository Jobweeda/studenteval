Student.destroy_all
Batch.destroy_all



batch1 = Batch.create!({ name: 'batch 1', startdate: '22/10/2017', enddate: '31/10/2017'})



student1 = Student.create!({ first_name: 'Job', last_name: 'Weeda', photo: 'https://static.boredpanda.com/blog/wp-content/uploads/2017/03/cute-funny-alpacas-3-58c64c1c3a5dd__605.jpg', batch: batch1 })
student2 = Student.create!({ first_name: 'Faisal', last_name: 'Al-Sudani', photo: 'https://static.boredpanda.com/blog/wp-content/uploads/2017/03/cute-funny-alpacas-3-58c64c1c3a5dd__605.jpg', batch: batch1 })
student3 = Student.create!({ first_name: 'Trist', last_name: 'Kwant', photo: 'https://static.boredpanda.com/blog/wp-content/uploads/2017/03/cute-funny-alpacas-3-58c64c1c3a5dd__605.jpg', batch: batch1 })
student4 = Student.create!({ first_name: 'Marloes', last_name: 'Demmendaal', photo: 'https://static.boredpanda.com/blog/wp-content/uploads/2017/03/cute-funny-alpacas-3-58c64c1c3a5dd__605.jpg', batch: batch1 })
student5 = Student.create!({ first_name: 'Ana', last_name: 'Spaniola', photo: 'https://static.boredpanda.com/blog/wp-content/uploads/2017/03/cute-funny-alpacas-3-58c64c1c3a5dd__605.jpg', batch: batch1 })
student6 = Student.create!({ first_name: 'Eva', last_name: 'Peene', photo: 'https://static.boredpanda.com/blog/wp-content/uploads/2017/03/cute-funny-alpacas-3-58c64c1c3a5dd__605.jpg', batch: batch1 })
