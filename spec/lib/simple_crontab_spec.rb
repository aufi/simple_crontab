require 'spec_helper.rb'

describe SimpleCrontab::SimpleCrontab do

  subject { SimpleCrontab::SimpleCrontab.new }

  describe 'can instantiate and respond to basic methods' do

    it 'respond to handle methods' do
      expect(subject.respond_to? :list).to be true
      expect(subject.respond_to? :save).to be true
      expect(subject.respond_to? :delete).to be true
    end

  end

end