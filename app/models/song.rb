class Song < ApplicationRecord

  validates :title, :artist_name, presence: true
  validates :title, uniqueness: { scope: :release_year}
  validate :require_release_year

  def require_release_year
    if released == true && (release_year.nil? || release_year > Date.current.year)
      errors.add(:release_year, 'is required')
   end
 end

end
