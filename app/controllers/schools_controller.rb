class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    # byebug
    @school = School.find(params[:id])
    # byebug
  end

  def delete_student
    # byebug
    @student = Student.find(params[:student_id])
    @student.delete
    redirect_to school_path(params[:id])
  end
end
