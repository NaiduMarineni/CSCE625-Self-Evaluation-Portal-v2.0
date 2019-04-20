class StatisticsController < ApplicationController
    def index
<<<<<<< HEAD
    
    end
=======
        @problems =Problem.all
    end
    
    def reset
        @problems =Problem.all
        @problems.each do |problem|
            problem.correct_attempts=0
            problem.num_of_attempts=0
            problem.save!
        end
        redirect_to statistics_path
        
    end

            
>>>>>>> b060b153779441c47642b6516cf3fa11e03c32e5
end