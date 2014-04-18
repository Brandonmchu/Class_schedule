class DepartmentsController < ApplicationController
 
  def index
    @departments = Department.all.includes(:students)
  end

end
