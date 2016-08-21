employer = EmployerRepresentative.create(email: "employer@em.em")
job = Job.create(title: "nice job", employer_representative_id: employer.id)
