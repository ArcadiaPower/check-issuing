module CheckIssuing
  class Client < Request

    def initialize
    end

    def base_path
      ''
    end

    def call(relative_path, data = nil, options = {})
      self.post(base_path+relative_path, options.reverse_merge(body: data))
    end

  end
end
