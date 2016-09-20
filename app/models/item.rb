class Item < ActiveRecord::Base
  has_many :order_items
  has_many :orders, through: :order_items

  # def initialize(search)
  #   data = BestBuyService.new.data(search)
  #   @thing = data["params"]
  #   @thing2 = data["params2"]
  # end
end
