class VotesController < ApplicationController

  def new
    @vote = Vote.new
  end

  def create
    @vote = current_user.votes.new(vote_params)
    if @vote.save
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    end
  end

  private
  def vote_params
    params.permit(:user_id, :answer_id)
  end

end

