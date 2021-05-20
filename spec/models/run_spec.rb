require 'rails_helper'

RSpec.describe Run, type: :model do
  before do
    @run = FactoryBot.build(:run)
  end
  
  describe '情報投稿機能' do
    context '情報投稿できるとき' do
      it '投稿に必要な情報が入力されていれば投稿できる' do
        expect(@run).to be_valid
      end
    end
    context '情報投稿できないとき' do
      it '投稿タイトルが空では投稿できない' do
        @run.title = ''
        @run.valid?
        expect(@run.errors.full_messages).to include("Title can't be blank")
      end
      it '投稿内容が空では投稿できない' do
        @run.content = ''
        @run.valid?
        expect(@run.errors.full_messages).to include("Content can't be blank")
      end
      it '画像が空では投稿できない' do
        @run.image = nil
        @run.valid?
        expect(@run.errors.full_messages).to include("Image can't be blank")
      end
      it 'ユーザーが紐づいていないと投稿できない' do
        @run.user = nil
        @run.valid?
        expect(@run.errors.full_messages).to include("User must exist")
      end
    end
  end
end
