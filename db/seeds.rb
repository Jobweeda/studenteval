Student.destroy_all
Batch.destroy_all



batch1 = Batch.create!({ name: 'batch 1', startdate: '22/10/2017', enddate: '31/10/2017'})



student1 = Student.create!({ first_name: 'Job', last_name: 'Weeda', current_color: 'red', batch: batch1 })
student2 = Student.create!({ first_name: 'Faisal', last_name: 'Al-Sudani', current_color: 'green', batch: batch1 })
student3 = Student.create!({ first_name: 'Trist', last_name: 'Kwant', current_color: 'yellow', batch: batch1 })
student4 = Student.create!({ first_name: 'Marloes', last_name: 'Demmendaal', current_color: 'green', batch: batch1 })
student5 = Student.create!({ first_name: 'Ana', last_name: 'Spaniola', current_color: 'yellow', batch: batch1 })
student6 = Student.create!({ first_name: 'Eva', last_name: 'Peene', current_color: 'green', batch: batch1 })
