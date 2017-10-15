Evaluation.destroy_all
Student.destroy_all
Batch.destroy_all



batch1 = Batch.create!({ name: 'batch 1', startdate: '22/10/2017', enddate: '31/10/2017'})
batch2 = Batch.create!({ name: 'batch 2', startdate: '1/11/2017', enddate: '10/11/2017' })
batch3 = Batch.create!({ name: 'batch 3', startdate: '11/11/2017', enddate: '20/11/2017' })


student1 = Student.create!({ first_name: 'Job', last_name: 'Weeda', current_color: 'red', batch: batch1 })
student2 = Student.create!({ first_name: 'Faisal', last_name: 'Al-Sudani', current_color: 'green', batch: batch1 })
student3 = Student.create!({ first_name: 'Trist', last_name: 'Kwant', current_color: 'yellow', batch: batch3 })
student4 = Student.create!({ first_name: 'Marloes', last_name: 'Demmendaal', current_color: 'green', batch: batch3 })
student5 = Student.create!({ first_name: 'Ana', last_name: 'Spaniola', current_color: 'yellow', batch: batch2 })
student6 = Student.create!({ first_name: 'Eva', last_name: 'Peene', current_color: 'green', batch: batch2 })
