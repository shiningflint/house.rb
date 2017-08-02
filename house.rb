class Room
  def initialize room_name
    @room_name = room_name
  end

  attr_accessor :room_name
end

class Mom
  def initialize
    @angry = false
    @at_room = nil
  end

  attr_accessor :angry, :at_room

  def angry?
    if @angry
      self.say "I'm really angry!"
    else
      self.say "I'm cool, thanks!"
    end
  end

  def set_angry angry
    @angry = angry
  end

  def say say
    puts "Mom: #{say}"
  end

  def enter_room room
    @at_room = room
    puts "Mom goes to the #{room.room_name}"
  end
end
