require 'spec_helper.rb'

describe SimpleCrontab::Serializer do

  subject { SimpleCrontab::Serializer.new }

  describe 'load entries' do

    it 'loads empty crontab' do
      subject.stub(:load_crontab).and_return(File.read('spec/support/empty_crontab'))
      expect(subject.load).to eq []
    end

    it 'loads simple_crontab' do
      subject.stub(:load_crontab).and_return(File.read('spec/support/full_crontab'))
      expect(subject.load).to eq [1]
    end

  end

end