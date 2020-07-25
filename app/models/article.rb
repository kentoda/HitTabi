class Article < ApplicationRecord
  has_many :tagmaps, dependent: :destroy
  has_many :tags, through: :tagmaps
  has_many :likes, dependent: :destroy
    
	belongs_to :user

  validates :status, inclusion: { in: [true, false] }
  validates :title, length: { in: 1..25 }
  # validates :content, length: { in: 1..1500 }

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

  # scope :with_keywords, -> keywords {
  #   if keywords.present?
  #     columns = [:title, :content]
  #     where(keywords.split(/[[:space:]]/).reject(&:empty?).map {|keyword|

  #       columns.map { |a| 
  #         logger.debug(arel_table[a])
  #         arel_table[a].matches("%#{keyword}%") }.inject(:or)

  #     }.inject(:and))
  #   end
  # }

# タグコールバック
after_create do
    article = Article.find_by(id: id)
    # hashbodyに打ち込まれたハッシュタグを検出
    tags = hashbody.scan(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/)
    tags.uniq.map do |tag| 
      p tag
      # ハッシュタグは先頭の#を外した上で保存
      tag = Tag.find_or_create_by(tag_name: tag.downcase.delete('#'))
      article.tags << tag
    end
  end
  #更新アクション
  before_update do
    article = Article.find_by(id: id)
    article.tags.clear
    tags = hashbody.scan(/[#＃][\w\p{Han}ぁ-ヶｦ-ﾟー]+/)
    tags.uniq.map do |tag|
      p tag
      tag = Tag.find_or_create_by(tag_name: tag.downcase.delete('#'))
      article.tags << tag
    end
  end

end
