class Rapper < ActiveRecord::Base
  has_many :rapper_songs

  validates :age, numericality: {greater_than_or_equal_to: 18, only_integer: true}
  # validates :name, format: {with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/ }

#  validates :songs, presence: true

  def twitter_url
  end
end
