puts "🌱 Seeding spices..."

# Student.create(name: "bobby",instrument: "guitar",teacher_id:2)
# Teacher.create(name: "Chelsea Kyle", instrument: "Guitar", availability: false, rate: 60)
# Comment.create(body: "Mike is teaching me how to rock with basic cord structures", student_id: 6, teacher_id: nil)

# student = Student.create(name: params[:name], instrument: params[:instrument], teacher_id: Teacher.find_by(name: params[name]).id

puts "✅ Done seeding!"


# post '/reviews' do
#     # review = Review.create(params) (don’t add this line) 
#     workspace = Workspace.find_by(id: params[:workspace_id])
#     review = workspace.reviews.create(params)
#     review.to_json
#   end
# post '/students' do
#     teacher = Teacher.find_by(id: params[:teacher_id])
#     student = teacher.students.create(params)
#     student.to_json
#   end


# 	post "/reviews" do 
#         review = Review.create(
#           review: params[:review].capitalize(), rating: params[:rating], 
#           company_name: params[:company_name].capitalize(), 
#           restuarant_id: Restuarant.find_by(name: params[:company_name].capitalize()).id
#         )
#           review.to_json(include: :restuarant)    
#     end
    