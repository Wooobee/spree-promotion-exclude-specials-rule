SpreePromotionExcludeSpecialsRule
=================================

A inverted version of the products rule that comes with Spree. This rule matches all products that are NOT marked for exclusion.
Excluding the product is done by a checkmark on the productpage.

Combine this with spree-promotion-roles-rule and you can create a discount for a special group of customers on all but a few selected products.

Installation
------------

Add spree_promotion_exclude_specials_rule to your Gemfile:

```ruby
gem 'spree_promotion_exclude_specials_rule', github: 'traels/spree-promotion-exclude-specials-rule'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_promotion_exclude_specials_rule:install
```

Add rule to config/initializers/spree.rb
```ruby
Rails.application.config.spree.promotions.rules << RolesPromotionRule
```

Copyright (c) 2013 Traels, released under the New BSD License
