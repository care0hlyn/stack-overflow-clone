class QuestionsController < ApplicationController

  before_filter :authorize, only: [:edit, :update]


  def index
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
end
