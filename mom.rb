class Mom
  def initialize name,
    at_room=nil,
    angry=false

    @name = name
    @at_room = at_room
    @angry = angry
  end

  attr_accessor :name, :angry, :at_room

  def sense_noise noise
    if noise > 3
      set_angry true
      angry?
    else
      set_angry false
      angry?
    end
  end

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

  def move_to destination_room
    if destination_room && @at_room != destination_room
      destination_room.add_object self.name, self
      leave_room @at_room
      @at_room = destination_room
      say "I'm going to the #{destination_room.name}"
    end
  end

  def leave_room source_room
    if source_room
      source_room.remove_object self.name, self
    end
  end
end
