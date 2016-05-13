class Campaign < ActiveRecord::Base

  belongs_to :user

  has_many :pledges, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :goal, presence: true, numericality: {greater_than: 10}

  geocoded_by :address   # method that looks for long and lat; can also be an IP address
  after_validation :geocode #these methods come from geocoder gem         # auto-fetch coordinates

  def upcased_title
    title.upcase
  end

end
