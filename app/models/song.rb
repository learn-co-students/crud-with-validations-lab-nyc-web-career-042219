class Song < ApplicationRecord
  validates :title, presence: true
  # cannot be repeated by same artist in same year
  validates :released, inclusion: { in: [true, false] }
  # validates :release_year (optional if released = false, required if true)
  # equal or less than current year
  validates :artist_name, presence: true


end
