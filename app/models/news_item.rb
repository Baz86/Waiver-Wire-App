class NewsItem < ApplicationRecord

    belongs_to :player

    validate_presence_of :player_id
    
end
