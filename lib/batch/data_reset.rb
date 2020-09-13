class Batch::DataReset
  def self.data_reset
    # 投稿を全て削除
    Article.delete_all
    p "投稿を全て削除しました"
    # Error resolutio
  end
end