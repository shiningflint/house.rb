class Room
  def initialize room_name
    @room_name = room_name
  end

  attr_accessor :room_name
end

class Speaker
  def initialize room
    @at_room = room
    @volume = 0
  end

  attr_accessor :at_room, :volume

  def vup
    if @volume != 10
      return @volume += 1
    else
      return @volume = 10
    end
  end

  def vdown
    if @volume != 0
      return @volume -= 1
    else
      return @volume = 0
    end
  end
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

class House
  def initialize
    @mom = Mom.new
    @lr = Room.new "Living Room"
    @kitchen = Room.new "Kitchen"
    @speaker = Speaker.new lr
  end

  attr_accessor :mom, :lr, :kitchen, :speaker

  def svup speaker
    speaker.vup
  end

  def svdown speaker
    speaker.vdown
  end
end
