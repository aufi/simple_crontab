require 'spec_helper.rb'

describe SimpleCrontab::Crontab do

  subject { SimpleCrontab::Crontab.new }

  describe 'can instantiate and respond to basic methods' do

    it 'respond to handle methods' do
      expect(subject.respond_to? :load).to be true
      expect(subject.respond_to? :save).to be true
    end

  end

end