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

#class Object
  #Song = Class.new
#end

