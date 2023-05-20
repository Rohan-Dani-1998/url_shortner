class Url < ApplicationRecord

  validates :long_url, presence: true

  ID_LENGTH = 10.freeze

  def generate_short_url
    ([*('a'..'z'),*('0'..'9')]).sample(ID_LENGTH).join
  end

end
