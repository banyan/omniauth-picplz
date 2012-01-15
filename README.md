# Omniauth Picplz [![Build Status](https://secure.travis-ci.org/banyan/omniauth-picplz.png)](http://travis-ci.org/banyan/omniauth-picplz)

Strategy to auth with Picplz via OAuth2.0 in OmniAuth.

Get your API key at http://picplz.com/apps/

## Basic Usage

    use OmniAuth::Builder do
      provider "picplz", ENV['PICPLZ_CLIENT_ID'], ENV['PICPLZ_CLIENT_SECRET']
    end

## Ruby

Tested with the following Ruby versions:

- MRI 1.9.2
- MRI 1.9.3

## License

Copyright (c) 2011 by Will Barrett and Tall Green Tree Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
