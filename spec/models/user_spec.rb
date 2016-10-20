require 'rails_helper'

RSpec.describe User, type: :model do
  describe ".find_or_create_from_auth_hash" do

    let(:auth_hash) do
      {
        provider: 'twitter',
        uid: '737329338530467841',
        info: {
          nickname: 'mnbvcxzljgfds',
          image: 'https://pbs.twimg.com/profile_images/749348751324516352/E-A8pFaV.jpg'
        }
      }
    end

    context "引数のproviderとuidに対応するUserが作成されていないとき" do
      let(:user) { User.find_or_create_from_auth_hash(auth_hash) }

      it "引数で設定した属性のUserオブジェクトが返ること" do
        expect(user.provider).to eq 'twitter'
        expect(user.uid).to eq '737329338530467841'
        expect(user.nickname).to eq 'mnbvcxzljgfds'
        expect(user.image_url).to eq 'https://pbs.twimg.com/profile_images/749348751324516352/E-A8pFaV.jpg'
      end

      it "Userオブジェクト数の変化" do
        expect{user}.to change { User.count }.from(0).to(1)
      end
    end

    context "引数のproviderとuidに対応するUserが作成されてるとき" do

      let(:created_user) do
        User.create(
          provider: 'twitter',
          uid: '737329338530467841',
          nickname: 'aaa',
          image_url: 'https://')
      end

      it "引数に対応するUserレコードのオブジェクトが返ること" do
        user = User.find_or_create_from_auth_hash(auth_hash)
        expect(user).not_to eq(created_user)
      end
    end

  end
end
