class StatisticsController < ApplicationController
    def index
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

            
end