class StudentsController < ApplicationController
  before_filter :authenticate_user!

  def list
      @students = Student.all
    end

    def show
      @student = Student.find(params[:id])
    end

    def new
      @student = Student.new
  end

  def create
    @student = Student.new(params[:student])
    if @student.save
        redirect_to :action => 'list'
    end

    end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update_attributes(student_param)
      redirect_to :action => 'show', :id => @student end
  end

  def delete
    Student.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  end
