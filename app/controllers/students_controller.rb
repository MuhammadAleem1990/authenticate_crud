class StudentsController < ApplicationController

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
        @student = Student.new(student_params)
        if @student.save
        redirect_to :action => 'list'
        else
        render :action => 'new'
        end
        end
     
        def student_params
        params.require(:student).permit(:first_name, :last_name, :course_name, :grade, :profile_image)
        end

        
        def edit
        @student = Student.find(params[:id])
        end
        def student_param
        params.require(:student).permit(:first_name, :last_name, :course_name, :grade, :profile_image)
        end
        def update
        @student = Student.find(params[:id])
        if @student.update(student_param)
        redirect_to :action => 'show', :id => @student
        else
        render :action => 'edit'
        end
        end
        def delete
        Student.find(params[:id]).destroy
        redirect_to :action => 'list'
        end
        end
