require 'omniauth-oauth'
require 'rexml/document'

module OmniAuth
  module Strategies
    class Ohloh < OmniAuth::Strategies::OAuth

      option :name, "ohloh"

      option :client_options, {
        :site => "https://www.openhub.net",
        :token_url => "/oauth/access_token"
      }

      uid{raw_info['id']}

      info do
        {
          :name => raw_info['name'],
          :location => raw_info['location'],
          :image => raw_info['avatar_url']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= Hash[REXML::Document.new(access_token.get('/accounts/me.xml').body).root.get_elements('/response/result/account').first.elements.collect{|n| [n.name,n.text]}]
      end

    end
  end
end
