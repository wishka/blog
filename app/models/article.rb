class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  has_many :comments

  def subject # instance method
    title
  end

  def last.comment
    comments.last
  end
end
