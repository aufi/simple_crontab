module SimpleCrontab
  class Crontab
    attr_accessor :entries
    attr_reader :serializer, :persisted

    def initialize(options = {})
      @serializer = Serializer.new
    end

    def load
      @entries = @serializer.load_crontab
    end

    def save

    end
  end
end