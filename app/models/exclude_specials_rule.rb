class ExcludeSpecialsRule < Spree::PromotionRule
  def eligible?(order, options = {})
    order.line_items.count > 0
  end

  def applicable?(promotable)
    promotable.is_a?(Spree::Order)
  end

  def products
    Spree::Product.where(:promotion_exclude => false).to_a
  end
end
