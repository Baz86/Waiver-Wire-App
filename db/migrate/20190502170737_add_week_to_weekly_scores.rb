class AddWeekToWeeklyScores < ActiveRecord::Migration[5.1]
  def change
    add_column :weekly_scores, :week, :integer
  end
end
