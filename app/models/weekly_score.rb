class WeeklyScore < ApplicationRecord

    belongs_to :player, class_name: "Player"

    validates_presence_of :score
    validates_presence_of :week
    validates_presence_of :player_id

end
