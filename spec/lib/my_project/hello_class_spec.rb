require 'spec_helper'
require 'my_project/my_class'

describe MyProject::MyClass do
  describe '#say_hello' do
    it 'says Hello' do
      expect(subject.say_hello('joe')).to eq('Hello joe')
    end
  end
end
