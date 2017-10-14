
Batch.destroy_all
Student.destroy_all
Evaluation.destroy_all



batch1 = Batch.create!({ name: 'batch 1', startdate: '22/10/2017', enddate: '31/10/2017'})
batch2 = Batch.create!({ name: 'batch 2', startdate: '1/11/2017', enddate: '10/11/2017' })
batch3 = Batch.create!({ name: 'batch 3', startdate: '11/11/2017', enddate: '20/11/2017' })


student1 = Student.create!({ first_name: 'Job', last_name: 'Weeda', batch: batch1 })
student2 = Student.create!({ first_name: 'Faisal', last_name: 'Al-Sudani', batch: batch1 })
student3 = Student.create!({ first_name: 'Trist', last_name: 'Kwant', batch: batch3 })
student4 = Student.create!({ first_name: 'Marloes', last_name: 'Demmendaal', batch: batch3 })
student5 = Student.create!({ first_name: 'Ana', last_name: 'Spaniola', batch: batch2 })
student6 = Student.create!({ first_name: 'Eva', last_name: 'Peene', batch: batch2 })

evaluation1 = Evaluation.create!({ red: true, student: student2 })
evaluation2 = Evaluation.create!({ red: true, student: student4  })
evaluation3 = Evaluation.create!({ yellow: true, student: student6 })
evaluation4 = Evaluation.create!({ yellow: true, student: student1 })
evaluation5 = Evaluation.create!({ green: true, student: student3 })
evaluation6 = Evaluation.create!({ green: true, student: student5 })
