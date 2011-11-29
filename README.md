# Ohloh OAuth Strategy

Strategy to auth with Ohloh via OAuth in OmniAuth.

## Basic Usage
    use OmniAuth::Builder do
      provider :ohloh, ENV['OHLOH_API_KEY'], ENV['OHLOH_CONSUMER_SECRET']
    end

