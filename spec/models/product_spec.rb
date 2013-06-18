require 'spec_helper'

describe Spree::Product do
  it "should accept creating a product with promotion_exclude flag" do
      FactoryGirl.build(:product, :promotion_exclude => true).should be_valid
    end
end