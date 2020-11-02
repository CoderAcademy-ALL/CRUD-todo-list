class Task < ApplicationRecord
    belongs_to :user

    validates :title, length: { minimum: 5 }
    validates :title, length: { maximum: 500 }
end
