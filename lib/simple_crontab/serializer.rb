module SimpleCrontab

  class Serializer

    PATTERNS = {
        delimiter: '###', #begin?
        entries: 'simple_crontab entries',
        entry: 'simple_crontab entry %name'
    }

    def self.patterns
      PATTERNS
    end

  end

end