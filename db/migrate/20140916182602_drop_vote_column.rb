class DropVoteColumn < ActiveRecord::Migration
  def change
    remove_column :answers, :vote_id
  end
end
