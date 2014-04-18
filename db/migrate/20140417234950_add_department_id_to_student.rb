class AddDepartmentIdToStudent < ActiveRecord::Migration
  def change
    add_column :students, :department_id, :integer

  Student.all.each do |student|
  	student.update(department_id: 1 + rand(2))
  end  
  end
end
