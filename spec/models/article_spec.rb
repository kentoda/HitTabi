require 'rails_helper'

RSpec.describe Article, type: :model do
    it "titleが入力されていないので保存されない" do
      @article = Article.new(title: nil)
      @article.valid?
      # i18nを使っているのでerrorメッセージをi18n.tを使って取ってくる
      expect(@article.errors[:title]).to include(I18n.t("errors.messages.blank"))
    end

end
