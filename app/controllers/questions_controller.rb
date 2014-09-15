class QuestionsController < ApplicationController

  before_filter :authorize, only: [:edit, :update]


  def index
    @question = Question.new
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
       respond_to do |format|
        format.html { redirect_to question_url }
        format.js
      end
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update(params[:question])
    respond_to do |format|
      format.html { redirect_to question_url }
      format.js
    end
  end

private
  def question_params
    params.require(:question).permit(:text).merge(:user_id => current_user.id)
  end
end
