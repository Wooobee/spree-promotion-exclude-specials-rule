describe "New promotions" do
  before :each do
    sign_in_admin!(create(:admin_user))
    @promo = create(:promotion)
  end

  it "have a role rule" do
    visit "/admin/promotions/1/edit"
    page.should have_content("Exclude special products")
  end
end