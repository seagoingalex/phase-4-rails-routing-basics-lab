class StudentsController < ApplicationController

    def index
        # model
        students = Student.all
        # view
        render json: students
    end

    def grades
        # model 
        grades = Student.order(grade: :desc)
        # view
        render json: grades
    end

    def highest_grade
        # model 
        ordered_students = Student.order(grade: :desc)
        highest_student = ordered_students.first
        # view
        render json: highest_student
    end

end
