class Article < ApplicationRecord
	has_many :tagmaps, dependent: :destroy
	# throughオプションでtagmaps経由でtagsにアクセス
    has_many :tags, through: :tagmaps
    
	belongs_to :user

	# def save_articles(tags)
	# # self.tags.pluck(:tag_name)では、tagsテーブルのtag_nameカラムの一覧を取り出す
 #    current_tags = self.tags.pluck(:tag_name) unless self.tags.nil?
 #    # old_tags = current_tags - tags既存のタグの配列から配列を除外
 #    old_tags = current_tags - tags
 #    new_tags = tags - current_tags
  
 #    # Destroy
 #    old_tags.each do |old_name|
 #      self.tags.delete Tag.find_by(tag_name:old_name)
 #    end

 #    # Create
 #    new_tags.each do |new_name|
 #      article_tag = Tag.find_or_create_by(tag_name:new_name)
 #      self.tags << article_tag
 #    end
 #  end

	# enum status: { draft: "0", published: "1" }
	# statusカラムのdraft(下書き)を０に指定しstatusカラムのpublished(公開)を１に指定

end
