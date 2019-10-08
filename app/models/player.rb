class Player < ApplicationRecord

    has_many :weekly_scores

    validates_presence_of :name
    validates_presence_of :team
    validates_presence_of :position

end
