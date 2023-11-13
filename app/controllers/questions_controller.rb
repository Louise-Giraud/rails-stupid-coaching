class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @userinput = params[:question]
    # params[:question]
    # If @userinput == "I am going to work right now!"
    if @userinput == "I am going to work right now!"
      @coachanswer = "Great!"
    elsif @userinput.include? "?"
      @coachanswer = "Silly question, get dressed and go to work!"
    else
      @coachanswer = "I don't care, get dressed and go to work!"
    end
  end
end
