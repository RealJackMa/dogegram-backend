class Image < ApplicationRecord
    has_many :comments

    validates :title, presence: true
    validates :likes, numericality: { greater_than_or_equal_to: 0 }
    validates :url, presence: true
end
