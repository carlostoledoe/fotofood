class Post < ApplicationRecord
  has_and_belongs_to_many :tags
  belongs_to :user
  has_many :boards, dependent: :destroy
  has_many :users, through: :boards
  has_many_attached :photos
  has_one_attached :image
  validate :validar_photos
  
  accepts_nested_attributes_for :tags, reject_if: ->(attrs) { attrs['name'].blank? }

  def self.buscar(text)
    if text and !text.empty? 
      f_post = Post.where( 
        "title LIKE ? or title LIKE ?", "%#{text.capitalize}%", "%#{text.downcase}%"
      )
      if f_post
        f_post
      else
        Post.all
      end
    else 
      Post.all
    end
  end

private
  def validar_photos
    return if photos.count <= 3

    errors.add(:mensaje, ": Solo puedes subir 3 fotos adicionales")
  end

end
