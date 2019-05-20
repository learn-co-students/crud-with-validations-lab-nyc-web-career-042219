class Song < ActiveRecord::Base
  validates :title, presence: true
  # validates :released, presence: true
  validates :artist_name, presence: true
  validate :repeat?
  validate :require_release_year

  def repeat?
    if self.class.find_by(title: title, artist_name: artist_name)
      errors.add(:title, 'can\'t be used again this year.')
    end
  end

  def require_release_year
    if released == true && (release_year.nil? || release_year > Time.now.year)
      errors.add(:release_year, 'is required')
    end
  end

end