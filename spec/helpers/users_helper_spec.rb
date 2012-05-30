require 'spec_helper'

describe UsersHelper do
  let(:user) { FactoryGirl.create(:user) }
  describe "gravatar_for" do
    let(:gravatar_size) {90}
    it "should return an img tag" do
      gravatar_for(user).should =~ /<img/
    end
    it "should take an optional size attribute" do
      gravatar_for(user, size: gravatar_size).should match("\\?s="+ gravatar_size.to_s)
    end
  end
end

