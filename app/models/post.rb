class Post < ApplicationRecord

	belongs_to :user
	attachment :image, destroy: false
	has_many :post_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	has_many :tags, dependent: :destroy

	def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end

	def self.search(word)
		if word == ""
			@posts == Post.all
		else
			@posts = Post.where(["(title LIKE?) OR (body LIKE?)", "%#{word}%", "%#{word}%"])
		end
	end

	validates :title, :presence => {:message => 'タイトルを入力してください'}
	validates :body, :presence => {:message => '投稿内容を入力してください'}, length: {maximum: 50}
	
	default_scope -> { order(created_at: :desc) }
end
