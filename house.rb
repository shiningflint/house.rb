require "./room"
require "./speaker"
require "./mom"

class House
  def initialize
    @lr = Room.new "Living Room"
    @kitchen = Room.new "Kitchen"
    @mom = Mom.new "Liz"
    @speaker = Speaker.new label: "Boombastic"
  end

  attr_accessor :mom, :lr, :kitchen, :speaker
end
