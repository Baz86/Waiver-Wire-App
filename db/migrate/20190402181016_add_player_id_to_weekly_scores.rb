class AddPlayerIdToWeeklyScores < ActiveRecord::Migration[5.1]
  def change
    add_column :weekly_scores, :player_id, :integer
  end
end
