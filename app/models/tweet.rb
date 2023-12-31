class Tweet < ApplicationRecord
    include PgSearch::Model

    pg_search_scope :search_full_text, against:{
        UserName: 'A',
        id: 'B',
    },

    using: {
        tsearch: {
            prefix: true, 
            any_word: true,
            dictionary: "spanish"
        }
    }
end
