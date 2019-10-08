class CreateWeeklyScores < ActiveRecord::Migration[5.1]
  def change
    create_table :weekly_scores do |t|
      t.integer :score
      t.timestamps
    end
  end
end
