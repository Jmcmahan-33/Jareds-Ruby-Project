class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/teachers' do
    teachers = Teacher.all
    teachers.to_json(include: :students)
  end

  post '/teachers' do
    teacher = Teacher.create(name: params[:name], musical_talents: params[:musical_talents], rate: params[:rate])
    teacher.to_json(include: :students)
  end

  
  get '/students' do
    students = Student.all
    students.to_json(include: :teacher)
  end
  
  post '/students' do
    student = Student.create(name: params[:name], instrument: params[:instrument], teacher_id: params[:teacher_id])
    student.to_json(include: :teacher)
  end

      patch '/students/:id' do
        student = Student.find(params[:id])
        student.update(
          name: params[:name],
          instrument: params[:instrument],
        )
        student.to_json(include: :teacher)
      end
   
     delete "/students/:id" do
    student = Student.find(params[:id])
    student.destroy
    student.to_json(include: :teacher)
  end
end








