class StudentsController < ApplicationController
    def index
        @student_data = Student.all
        render json: {val: @student_data}
    end
end



