class Image < ApplicationRecord
    has_many :comments

    validates :title, presence: true
    validates :likes, numericality: { greater_than: 0 }
    validates :url, presence: true
end
