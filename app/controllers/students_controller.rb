# freeze_Strin_literal: true

class StudentsController < ApplicationController
  def index
    @students = Student.all.limit(10)
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    return flash[:alert] = 'success' if @student.valid?
    flash[:alert] = 'error'
  end

  private

  def students_param
    param.require(:student).permit(
      :first_name, :last_name, :middle_name, :admission_number
    )
  end
end
