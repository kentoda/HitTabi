require 'rails_helper'

RSpec.describe Article, type: :model do

    it "titleが入力されていないので保存されない" do
      @article = Article.new(title: nil)
      @article.valid?
      # i18nを使っているのでerrorメッセージをi18n.tを使って取ってくる
      expect(@article.errors[:title]).to include(I18n.t("errors.messages.blank"))
    end

    context "データが正しく保存される" do

    	before do
      		@user = FactoryBot.create(:user)
        end

    	it "全て入力されているので保存可能" do
    	user = @user
      	@article = user.articles.build(
      	title: "hogehoge",
      	content: "Hello",
      	hashbody: "#hoge",
      	status: "true"
      	)
     	 expect(@article).to be_valid
     	end
    end





end
