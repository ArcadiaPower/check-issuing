require 'httparty'
require 'checkissuing/version'

module Checkissuing
  mattr_accessor :api_key, :client_id

  mattr_accessor :endpoint
  @@endpoint = 'https://apisb.webmasterchecks.com/'

  mattr_accessor :debug
  @@debug = true

  mattr_accessor :debug_output
  @@debug_output = $stdout

  def self.configure
    yield self
  end

end

require 'checkissuing/request'
require 'checkissuing/client'