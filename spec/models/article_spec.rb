require "spec_helper"

RSpec.describe Article, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of (:title) }
    it { is_expected.to validate_presence_of (:text) }
end
end
  RSpec.describe Article, type: :model do
      describe 'associations' do
      it { should have_many :comments }
      end
end
    describe "#subject" do
      it "returns the article title" do
        #Создаем объект article хитрым способом (arrange)
        article = create(:article, title: 'Lorem Ipsum')
        #assert, проверка
        expect(article.subject).to eq 'Lorem Ipsum'
      end
    end

    describe "#last_comment" do
      it "return the last comment" do
        #Создаем статью, но уже с комментариями
        article = create(:article_with_comments)

        #Проверка
        expect(article_last_comment.body).to eq "comment body 3"
      end
    end
