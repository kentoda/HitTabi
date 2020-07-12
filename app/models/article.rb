class Article < ApplicationRecord
	has_many :tagmaps, dependent: :destroy
	# throughオプションでtagmaps経由でtagsにアクセス
    has_many :tags, through: :tagmaps
    
	belongs_to :user

	enum status: { draft: "0", published: "1" }
	# statusカラムのdraft(下書き)を０に指定しstatusカラムのpublished(公開)を１に指定

end
