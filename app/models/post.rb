class Post < ApplicationRecord
  # validate the title and body fields
  validates :title, presence: true, length: {minimum: 0, maximum: 100}
  validates :body, presence: true, length: {minimum: 0, maximum: 10000}
end
