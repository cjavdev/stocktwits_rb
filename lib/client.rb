class Stocktwits
  class Client
    attr_accessor(
      :consumer_key,
      :consumer_secret,
      :access_token,
      :access_token_secret
    )

    def initialize(options = {})
      options.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
      yield(self) if block_given?
    end
  end
end

# Stocktwits::Client.new do |config|
#   config.consumer_key        = "YOUR_CONSUMER_KEY"
#   config.consumer_secret     = "YOUR_CONSUMER_SECRET"
#   config.access_token        = "YOUR_ACCESS_TOKEN"
#   config.access_token_secret = "YOUR_ACCESS_SECRET"
# end
