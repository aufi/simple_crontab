require 'spec_helper.rb'

describe SimpleCrontab::Entry do

  subject { SimpleCrontab::Entry.new }

  describe 'can instantiate and respond to basic methods' do

    pending 'respond to handle methods' do
      expect(subject.respond_to? :list).to be true
      expect(subject.respond_to? :save).to be true
      expect(subject.respond_to? :delete).to be true
    end

  end

end