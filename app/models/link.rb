class Link < ApplicationRecord
    validates(:title,   presence: true,
                        length: { minimum: 6 })

    validates(:body,    presence: true)

    belongs_to :user
    has_many :comments
end
