class Tweet < ApplicationRecord
  validates :text, presence: true, length: { maximum: 120,
                                             too_long: '120 characters in post is the maximum allowed.' }

  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
end
