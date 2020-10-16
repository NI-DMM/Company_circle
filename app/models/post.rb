class Post < ApplicationRecord

	belongs_to :user
	attachment :image
	has_many :post_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy

	def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end

	validates :title, presence: true
	validates :body, presence: true, length: {maximum: 50}
	
	default_scope -> { order(created_at: :desc) }
end