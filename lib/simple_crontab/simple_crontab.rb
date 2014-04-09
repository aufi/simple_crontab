module SimpleCrontab
  class SimpleCrontab
    attr_reader :entries, :persisted

    def initialize(path = nil)
      load_crontab unless path.nil?
    end

    def list

    end

    def save

    end

    def delete

    end

    private

    def load_crontab

    end

    def save_crontab

    end
  end
end