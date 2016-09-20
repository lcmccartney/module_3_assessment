class Store

  def initialize(search)
    best_buy_api = BestBuyService.new.data(search)
    @thing = thing["thing"]
  end
end
