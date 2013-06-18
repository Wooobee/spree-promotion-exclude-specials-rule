#class RolePromotionRule < Spree::PromotionRule
#  def eligible?(order)
#    order.user.has_spree_role? self.class.name.gsub(/RolePromotionRule/, '').downcase 
#  end
#end


class ExcludeSpecialsRule < Spree::PromotionRule
  def eligible?(order, options = {})
    order.line_items.count > 0
  end

  def products
#    prods = []
#    Spree::Product.where(:promotion_exclude => false).all.each do |p|
#      prods.push p.id
#    end
#    prods
    Spree::Product.where(:promotion_exclude => false).all
  end
end
