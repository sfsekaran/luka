require 'luka'

describe Luka do
  include Luka

  class Banana
    def peel
      @peeled = true
    end
    def squish
      @squished = true
    end
    def peeled?
      @peeled
    end
    def squished?
      @squished
    end
  end

  let(:banana) { Banana.new }
  subject { luka(banana) }

  it { should be_an_instance_of(Luka::Fluent) }

  it 'calls the method on the original object' do
    subject.peel
    banana.should be_peeled
  end

  it 'returns itself when a method is called' do
    subject.peel.should == subject
  end

  it 'chains methods' do
    subject.peel.squish
    banana.should be_peeled
    banana.should be_squished
  end
end
