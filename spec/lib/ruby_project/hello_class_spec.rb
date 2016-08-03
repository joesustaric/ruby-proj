require 'spec_helper'
require 'ruby_project/hello_class'

describe RubyProject do

  describe '#hello' do

    it 'says Hello' do
      expect(subject.say_hello).to eq('Hello World!')
    end

  end

end
