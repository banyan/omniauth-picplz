# Omniauth Picplz [![Build Status](https://secure.travis-ci.org/banyan/omniauth-picplz.png)](http://travis-ci.org/banyan/omniauth-picplz)

Strategy to auth with Picplz via OAuth2.0 in OmniAuth.

Get your API key at http://picplz.com/apps/

Be sure when you register callback url will be "http://sample.com/auth/picplz/callback"

## Basic Usage

    use OmniAuth::Builder do
      provider "picplz", ENV['PICPLZ_CLIENT_ID'], ENV['PICPLZ_CLIENT_SECRET']
    end

## Ruby

Tested with the following Ruby versions:

- MRI 1.8.7
- MRI 1.9.2
- MRI 1.9.3

## License

OmniAuth Picplz is released under the MIT license.
