class BestBuyService

  def initialize
    @conn = Faraday.new("https://api.bestbuy.com/v1")
  end

  def data(search)
    @conn.get do |req|
      req.url 'product', :api_key => ENV["BB_API_KEY"]
      req.params['callback'] = "JSON_CALLBACK"
      req.params['format'] = "json"
    end
  end

  private

    def parse(response)
      JSON.parse(response)
    end
end
