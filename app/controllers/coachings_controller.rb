class CoachingsController < ApplicationController
  def answer
    @answer = params[:query]
    @coach_answer = coach_answer(@answer)
  end

  def ask
  end

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      return ""
    elsif your_message.include? "?"
      then return "Silly question, get dressed and go to work!"
    else return "I don't care, get dressed and go to work!"
    end
  end

end
