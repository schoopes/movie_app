class Movie < ApplicationRecord
  validates :title, presence: true
  validates :plot, length: {in: 10..1000}
  validates :year, numericality: {less_than: 2020}

  has_many :actors
end
