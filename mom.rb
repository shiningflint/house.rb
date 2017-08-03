class Mom
  def initialize name, at_room=nil, angry=false
    @name = name
    @at_room = at_room
    @angry = angry
  end

  attr_accessor :name, :angry, :at_room

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
    if @at_room == room
      say "I'm already in the #{room.name}"
    else
      leave_room @at_room
      @at_room = room
      room.objects[@name] = self
      say "I'm going to the #{room.name}"
    end
  end

  def leave_room room
    if room
      room.objects.delete(@name)
    end
  end
end
