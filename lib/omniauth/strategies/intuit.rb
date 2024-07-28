require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Intuit < OmniAuth::Strategies::OAuth2
      module Defaults
        ACCOUNTS_DOMAIN = 'accounts.platform.intuit.com/v1/openid_connect/userinfo"'.freeze
      end

      option :name, :intuit

      option(
        :client_options,
        {
          site: 'https://appcenter.intuit.com/connect/oauth2',
          authorize_url: 'https://appcenter.intuit.com/connect/oauth2',
          token_url: 'https://oauth.platform.intuit.com/oauth2/v1/tokens/bearer',
        },
      )

      info do
        raw_info
      end

      extra do
        { raw_info: raw_info }
      end

      private

      def raw_info
        @raw_info = parsed_body
      end

      def parsed_body
        JSON.parse api_response.body
      end

      def api_response
        @_api_response ||= access_token.get("https://#{ Defaults::ACCOUNTS_DOMAIN }"
      end
    end
  end
end
