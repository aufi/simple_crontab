require 'spec_helper.rb'

describe SimpleCrontab::Entry do

  subject { SimpleCrontab::Entry.new(rule = '0 0 * * *', command = '/usr/bin/date') }

  describe 'can instantiate and respond to basic methods' do

    it 'respond to basic api methods' do
      expect(subject.respond_to? :serialize).to be true
      expect(subject.respond_to? :rule).to be true
      expect(subject.respond_to? :command).to be true
    end

    describe 'serialize' do

      it 'valid entry' do
        expect(subject.serialize).to eq '0 0 * * *  /usr/bin/date'
      end

      it 'invalid entry' do
        subject.rule = ''
        subject.command = ''
        expect(subject.serialize).to eq nil
      end

    end

  end

end