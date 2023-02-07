puts "🌱 Seeding spices..."

Student.create(name: "bobby",instrument: "guitar", comment: "Mike is a rad teacher",teacher_id:2)
Teacher.create(name: "Chelsea Kyle", instrument: "Guitar", availability: false, rate: 60)

puts "✅ Done seeding!"
