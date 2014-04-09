module SimpleCrontab

  class Entry
    attr_accessor :rule, :command

    def initialize(rule = '', command = '')
      @rule = rule
      @command = command
    end

    def serialize
      "#{rule}  #{command}" if valid?
    end

    private

    def valid?
      !rule.to_s.empty? && !command.to_s.empty? #TODO: raise some error?
    end

  end

end