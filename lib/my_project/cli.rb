require 'clamp'
require 'my_project/my_class'

module MyProject
  # Doco
  class CLI < Clamp::Command
    option '--loud', :flag, 'say it loud'
    option ['-n', '--iterations'], 'N', 'say it N times', default: 1 do |s|
      Integer(s)
    end

    parameter 'NAME ...', 'who to say hello to', attribute_name: :words

    def execute
      sayer = MyClass.new
      the_name = words.join(" ")
      the_name.upcase! if loud?
      iterations.times do
        puts sayer.say_hello the_name
      end
    end
  end
end
