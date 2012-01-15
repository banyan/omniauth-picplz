require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class Picplz < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site          => 'http://api.picplz.com',
        :authorize_url => 'https://picplz.com/oauth2/authenticate',
        :token_url     => 'https://picplz.com/oauth2/access_token'
      }

      def request_phase
        options[:response_type] ||= 'code'
        super
      end

      uid { raw_info["id"] }

      info do
        {
          'name'     => raw_info["display_name"],
          'nickname' => raw_info["username"],
          'image'    => raw_info["icon"]["url"],
          'urls'     => { 'Picplz' => "http://picplz.com/user/#{raw_info['username']}" },
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= begin
          user_id = access_token.params["user_id"]
          MultiJson.decode(access_token.get("/api/v2/user.json?id=#{user_id}").body)["value"]["users"][0]
        end
      end
    end
  end
end

OmniAuth.config.add_camelization 'picplz', 'Picplz'
