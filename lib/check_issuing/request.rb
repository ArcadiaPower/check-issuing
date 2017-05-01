require 'httparty'
require 'json'

module CheckIssuing
  class Request
    include HTTParty

    def get(path, options={})
      set_auth(options)
      @response = self.class.get(CheckIssuing.endpoint + path, options)
    end

    def post(path, options={})
      set_auth(options)
      @response = self.class.post(CheckIssuing.endpoint + path, options)
    end

    def put(path, options={})
      set_auth(options)
      @response = self.class.put(CheckIssuing.endpoint + path, options)
    end

    def delete(path, options={})
      set_auth(options)
      @response = self.class.delete(CheckIssuing.endpoint + path, options)
    end

    def response
      @response
    end

    def parsed_response
      self.response.parsed_response if self.response.present?
    end

    private

    def set_auth(options)
      options[:body] ||= {}
      options[:body][:akey] ||= CheckIssuing.api_key
      options[:body][:client_id] ||= CheckIssuing.client_id


      options[:http_proxyaddr] = CheckIssuing.proxy_host if CheckIssuing.proxy_host.present?
      options[:http_proxyport] = CheckIssuing.proxy_port if CheckIssuing.proxy_port.present?
      options[:http_proxyuser] = CheckIssuing.proxy_user if CheckIssuing.proxy_user.present?
      options[:http_proxypass] = CheckIssuing.proxy_password if CheckIssuing.proxy_user.present?
    end
  end
end
