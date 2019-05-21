class Pledge

    attr_reader :project, :user, :pledge_goal_amount 
    @@all = []

    def initialize(pledge_goal_amount, project, user)
        @pledge_goal_amount = pledge_goal_amount
        @project = project
        @user = user
        @@all << self 
    end 

    def self.all
        @@all
    end 


end