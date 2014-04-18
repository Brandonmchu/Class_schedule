class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
    Course.reset_column_information!

	english_department_id = Department.find_by(name: 'English').id
	cs_department_id = Department.find_by(name: 'Computer Science').id
	physics_department_id = Department.find_by(name: 'Physics').id

	Course.each do |course|
	  if course.code.starts_with?("CS")
	    course.update(department_id: cs_department_id)
	  elsif course.code.starts_with?("ENG")
	    course.update(department_id: english_department_id)
	  elsif course.code.starts_with?("PHY")
	    course.update(department_id: physics.department_id)
	  end
	end
end
