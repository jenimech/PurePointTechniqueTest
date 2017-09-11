class RecipePuppy
  def initialize(key)
    @key = key
  end

  def perform
    request  = Net::HTTP.get(URI.parse(RECIPEPUPPYURL + "?q=#{@key}"))
    parse_results(request)
  end

  private

  def parse_results(request)
    JSON.parse(request)["results"][0..19] #parse it and show only 20 results
  end
end