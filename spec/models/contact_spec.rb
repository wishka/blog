require "spec_helper"

RSpec.describe Contact, type: :model do

  it { is_expected.to validate_presence_of (:email) }
  it { is_expected.to validate_presence_of (:message) }
end
