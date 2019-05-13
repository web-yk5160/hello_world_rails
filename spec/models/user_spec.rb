require 'rails_helper'

RSpec.describe User, type: :model do
  context "account が指定されている場合" do
    it "ユーザーが作られる" do
      user = create(:user)

      expect(user).to be_valid
    end
  end

  context "account が指定されていない場合" do
    it "エラーする" do
      user = build(:user, account: nil)
      user.valid?

      expect(user.errors.messages[:account]).to include "can't be blank"
    end
  end

  context "同名のアカウントが存在するとき" do
    it "エラーする" do
　　　　　　create(:user, account: "chinju")
      user = build(:user, account: "chinju")
      user.valid?

      expect(user.errors.messages[:account]).to include "has already been taken"
    end
  end
end
