module Checkissuing
  class Client < Request

    def initialize
    end

    def base_path
      ''
    end

    def call(relative_path, data = nil)
      self.post(base_path+relative_path, body: data)
    end

  end
end