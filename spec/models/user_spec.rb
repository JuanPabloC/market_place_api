require 'spec_helper'

describe User do
  before { @user = FactoryGirl.build(:user) }

  subject { @user }

  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should allow_value('example@domain.com').for(:email) }
  it { should validate_presence_of(:password) }
  it { should validate_confirmation_of(:password) }
  it { should validate_presence_of(:password_confirmation) }

  it { should be_valid }
end

