class StatisticsController < ApplicationController
    def index
        @topics = Topic.all
    end
    
    def display_stats
        topic_chosen = params[:topic_to_display]
        if topic_chosen == 'all'
            @problems = Problem.all
        else 
            @problems = Problem.where(topic: [topic_chosen])
        end
    end
    
    def reset_stats
        @topics = Topic.all
    end
    
    def reset_by_topic
        topic_chosen = params[:topic_to_reset]
        if topic_chosen == 'all'
            @problems = Problem.all
        else 
            @problems = Problem.where(topic: [topic_chosen])
        end
        @problems.each do |problem|
            problem.correct_attempts=0
            problem.num_of_attempts=0
            problem.save!
        end
        redirect_to reset_stats_path
    end

            
end