class StaticController < ApplicationController
  def home
   # Get all Study Sessions
   @sessions = StudySession.all
   if user_signed_in?
     redirect_to user_path(current_user)
   end
  end 
end
