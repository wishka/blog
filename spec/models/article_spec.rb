require "spec_helper"

RSpec.describe Article, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of (:title) }
    it { is_expected.to validate_presence_of (:text) }
end

  RSpec.describe Article, type: :model do
      describe 'associations' do
      it { should have_many :comments }
      end
end
