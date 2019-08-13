class Link < ApplicationRecord
    validates(:title,   presence: true,
                        length: { minimum: 6 })

    validates(:body,    presence: true)
end
