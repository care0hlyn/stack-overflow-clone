class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    if @answer.save
      respond_to do |format|
        format.html { redirect_to question_url }
        format.js
      end
    end
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])
    @answer.update(params[:answer])
    respond_to do |format|
      format.html { redirect_to question_url }
      format.js
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:text, :question_id).merge(user_id: current_user.id, question_id: @question.id)
  end

end

