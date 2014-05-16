class StudySessionsController < ApplicationController
  def new
   @study_session = StudySession.new 
  end

  def create
    @study_session = StudySession.new(ss_params)
    if @study_session.save  #  
      # Successful Save
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end
  private
  def ss_params
    params.require(:study_session).permit(:name, :location, :subject)
  end

end
