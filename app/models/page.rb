class Page < ActiveRecord::Base
  attr_accessible :title, :slug, :blurb,:content
  validates :title,:content,presence: true
  validates :slug,presence: true, format: { with: /\A[a-zA-Z-]+\z/}
end
