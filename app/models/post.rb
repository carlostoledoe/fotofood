class Post < ApplicationRecord
  has_many :tags, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :tags, reject_if: ->(attrs) { attrs['name'].blank? }
end
