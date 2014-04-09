module SimpleCrontab
  class SimpleCrontab
    attr_reader :entries, :persisted

    def initialize(path = nil)
      load unless path.nil?
    end

    def load

    end

    def save

    end
  end
end