require 'spec_helper'

describe Spree::Product do
  describe "admin interface" do
    it "should have a promotion_exclude checkbox on product page" do
      product = create(:product)
      user = create(:admin_user, :email => "admin@person.com", :password => "password", :password_confirmation => "password")
      sign_in_admin!(user)
      visit "/admin/products"
      within('table.index') { click_link "Edit" }
      check('Exclude from promotions')
      click_button "Update"
      page.should have_content("successfully updated!")
      page.has_checked_field?('product_promotion_exclude').should == true
    end
  end

end