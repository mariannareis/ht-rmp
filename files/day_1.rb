class Person
end

class Awesome
end

class Object

  define_method :new_class do
    Class.new(Person)
  end

  def metaclass
    singleton_class
  end

  def new_method(subject)
  end

  def hello
    "Hello from #{self.class.name} instance"
  end

end

module App
  extend self
  attr_accessor :description
end

