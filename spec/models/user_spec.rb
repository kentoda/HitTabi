require 'rails_helper'

RSpec.describe User, type: :model do
    it "nameが入力されていないので登録できない" do
      @user = User.new(name: nil)
  	  @user.valid?
      expect(@user.errors[:name]).to include(I18n.t("errors.messages.blank"))
    end

    it "ニックネームが重複している場合、登録ができない" do
   	  User.create(
     	name: "Test"
  	  )

  	@user = User.new( 
    	name: "Test"
  	  ) 
  	@user.valid?
  	expect(@user.valid?).to eq(false)
    end
end
