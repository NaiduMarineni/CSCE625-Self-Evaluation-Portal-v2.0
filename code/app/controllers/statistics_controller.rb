class StatisticsController < ApplicationController
    def index
        @topics = Topic.all
    end
    
    def display_stats
        topic_chosen = params[:topic_to_display]
        if topic_chosen == 'all'
            @problems = Problem.all
            @topic_chosen = 'All Topics'
        else 
            @problems = Problem.where(topic: [topic_chosen])
            @topic_chosen = Topic.find(topic_chosen).name
        end
    end
    
    def reset_stats
        @topics = Topic.all
    end
    
    def reset_by_topic
        topic_chosen = params[:topic_to_reset]
        text_to_display = ''
        if topic_chosen == 'all'
            @problems = Problem.all
            text_to_display = 'all topics'
        else 
            @problems = Problem.where(topic: [topic_chosen])
            text_to_display = Topic.find(topic_chosen).name
        end
        @problems.each do |problem|
            problem.correct_attempts=0
            problem.num_of_attempts=0
            problem.save!
        end
        flash[:success] = "Statistics reset for "+ text_to_display
        redirect_to reset_stats_path
    end

            
end