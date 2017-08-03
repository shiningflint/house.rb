class Speaker
  def initialize label, room=nil, volume=0
    @label = label
    @at_room = room
    @volume = volume
  end

  attr_accessor :label, :at_room, :volume

  def vup
    if @volume != 10
      @volume += 1
    else
      return @volume = 10
    end
  end

  def vdown
    if @volume != 0
      @volume -= 1
    else
      return @volume = 0
    end
  end

  def move_to room
    if @at_room == room
      puts "The speaker is in the room already"
    else
      leave_room @at_room
      @at_room = room
      room.objects[@label] = self
      puts "Moved to the #{room.name}"
    end
  end

  def leave_room room
    if room
      room.objects.delete(@label)
    end
  end
end
