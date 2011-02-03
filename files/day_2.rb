# -*- encoding: utf-8 -*-

#1
def send_message
  m = Message.new()
  m.send(:deliver)
end

#2
def send_message_with_args
  m = Message.new()
  Message.__send__(:send, m, 1)
end

#3
def send_private_method
  m = Message.new()
  m.__send__(:send, :prepare)
end

#4
def send_public_method
  m = Message.new()
  m.public_send(:prepare)
end

#5
class Song
  attr_accessor :title, :artist, :duration
  def initialize(options = {})
      options.each { |name, value| instance_variable_set "@#{name}", value }
  end

end

#6
class String
  def to_leet
    hash = {"a" => "4", "e" => "3", "i" => "1", "o" => "0", "u" => "μ" }
    self.each_char do |letra|
      self[letra] = hash[letra] if hash[letra] != nil
   end
  end
end

#7 e 8
class Object
  attr_accessor :blog

  def reverse_attr(arg1, arg2)
  end

  def leet_attr(arg1, arg2)
  end
end

Object.class_eval do
  %w[blog].each do |blog|
    define_method(blog.to_leet) do |*args|
      return self.blog.to_leet
    end
  end
end

Object.class_eval do
  %w[blog].each do |method_name|
    define_method(method_name.reverse) do |*args|
      return self.blog.reverse
    end
  end
end

#9
Car.singleton_class.class_eval { undef_method :useless }

#10
class Ferrari
  def color(default_color = "black")
    @color = default_color
  end
end

#11
Ferrari.class_eval { undef_method :engine }

module Calc
  def self.sum(arg1, arg2)
    arg1 = 0 if arg1 == nil
    arg1 + arg2
  end
end

