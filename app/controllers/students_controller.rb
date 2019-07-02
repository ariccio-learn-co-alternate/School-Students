class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new

  end

  def edit
  end

  def destroy

  end

  def index
    @students = Student.all
  end

  def create
    @school = School.find(params[:school_id])
    # byebug
    @student = @school.student.create!(student_params(params))
    redirect_to student_path(@student)
  end

  def student_params(params)
    params.require(:student).permit(:name, :age)
  end
end
