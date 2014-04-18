class CoursesController < ApplicationController
  def index
    @courses = Course.all.includes(:department)
  end
end
