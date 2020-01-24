module V1
    class StudentsController < ApplicationController
        def index
            @student_data = Student.all
            render json: {val: @student_data}
        end

        def destroy
            Student.find(params[:id]).destroy()
            render json: {val: Student.all}
        end
    end
end














