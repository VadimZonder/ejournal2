class Student < ActiveRecord::Base
    
      def student_params
      params.require(:student).permit(:name, :surname, :day_of_birth, :school, :email)
      end

 has_many :results, dependent: :destroy
end
