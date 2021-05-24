require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント投稿機能' do
    context 'コメントできるとき' do
      it 'コメントフォームが適切に入力されていると投稿できる' do
        expect(@comment).to be_valid
      end
    end
    context 'コメントできないとき' do
      it 'コメントフォームが空では投稿できない' do
        @comment.text = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Text can't be blank")
      end
      it 'userモデルと紐づいていないと投稿できない' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("User must exist")
      end
      it 'runモデルと紐づいていないと投稿できない' do
        @comment.run = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Run must exist")
      end
    end
  end
end
