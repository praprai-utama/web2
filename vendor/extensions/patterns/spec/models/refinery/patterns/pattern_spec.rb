require 'spec_helper'

module Refinery
  module Patterns
    describe Pattern do
      describe "validations" do
        subject do
          FactoryGirl.create(:pattern,
          :name => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:name) { should == "Refinery CMS" }
      end
    end
  end
end
