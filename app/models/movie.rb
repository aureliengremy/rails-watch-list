class Movie < ApplicationRecord
  has_many :bookmarks

  # A movie must have a unique title and an overview.
  validates :title, uniqueness: true, presence: true
  validates :overview, uniqueness: true, presence: true
end
