require 'spec_helper'

describe ExcludeSpecialsRule do
  before :each do
    @rule = ExcludeSpecialsRule.new
  end

  it "is not eligible for an empty order" do
    @order = create(:order)
    @rule.eligible?(@order).should == false
  end

  it "is eligible for non empty order" do
    @order = create(:order_with_line_items)
    @rule.eligible?(@order).should == true
  end

  context "promotion lists all products that are not excluded" do
    before :each do
      @promotion = create(:promotion)
      create(:product, :promotion_exclude => true)
      create(:product, :promotion_exclude => false)
      create(:product, :promotion_exclude => false)
      @promotion.rules.push ExcludeSpecialsRule.new
    end

    it "should have products" do
      @promotion.products.size.should == 2
    end
  end
end