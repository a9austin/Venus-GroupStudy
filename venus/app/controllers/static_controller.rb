class StaticController < ApplicationController
  def home
   # Get all Study Sessions
   @sessions = StudySession.all
  end 
end
