EmployerRepresentative.destroy_all
Job.destroy_all

ikzelf = EmployerRepresentative.create(email: "abc@abc.abc", password: "abcd1234")
employer = EmployerRepresentative.create(email: "employer@em.em", password: "abcd1234")
job = Job.create(title: "nice job", employer_representative_id: ikzelf.id)
job2 = Job.create(title: "nice job2", employer_representative_id: employer.id)
