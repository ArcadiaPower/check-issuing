require 'httparty'
require 'check_issuing/version'

module CheckIssuing
  mattr_accessor :api_key, :client_id, :proxy_host, :proxy_user, :proxy_password

  mattr_accessor :endpoint
  @@endpoint = 'https://apisb.webmasterchecks.com/'

  mattr_accessor :debug
  @@debug = true

  def self.debug=(flag)
    @@debug = flag
    CheckIssuing::Request.default_options.delete(:debug_output) unless flag
  end

  def self.debug_output=(output)
    return unless debug
    CheckIssuing::Request.debug_output(output)
  end

  mattr_accessor :proxy_port
  @@proxy_port = 80

  def self.configure
    yield self
  end
end

require 'check_issuing/request'
require 'check_issuing/client'

# default starting point
CheckIssuing.debug_output = $stdout
