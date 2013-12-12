class ExcludeSpecialsRule < Spree::PromotionRule
  def eligible?(order, options = {})
    order.line_items.count > 0
  end

  def products
    Spree::Product.where(:promotion_exclude => false).all
  end
end
