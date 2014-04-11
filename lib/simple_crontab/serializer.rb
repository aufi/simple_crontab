module SimpleCrontab

  class Serializer

    PATTERNS = {
        entries_begin: '### simple_crontab entries begin ###',
        entries_end: '### simple_crontab entries end ###',
        entry_begin: '## entry begin', # %name
        entry_end: '## entry end'
    }

    def self.patterns
      PATTERNS
    end

    def initialize
    end

    def load
      parse_entries(load_crontab)
    end

    def save

    end

    private

    def parse_entries(crontab_content)
      my_crontab_content = crontab_content.match(/#{PATTERNS[:entries_begin]}(.*)#{PATTERNS[:entries_end]}/m)
      return [] if my_crontab_content[1].to_s.empty?
      my_crontab_content[1].match(/#{PATTERNS[:entry_begin]}.*\n(.*)\n#{PATTERNS[:entry_end]}/m)
      binding.pry
      #p my_crontab_content
      #lines = crontab_content.
    end

    def load_crontab
      %x[crontab -l]
    end


  end

end