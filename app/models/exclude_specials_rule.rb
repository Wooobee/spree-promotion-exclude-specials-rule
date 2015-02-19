class ExcludeSpecialsRule < Spree::PromotionRule
  def eligible?(order, options = {})
    order.line_items.count > 0
  end

  def applicable?(promotable)
    promotable.is_a?(Spree::Order)
  end

  def products
    Spree::Variant.has_option(4,"false").to_a
  end
end
