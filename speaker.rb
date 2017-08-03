class Speaker
  def initialize (args)
    @label = args[:label] || nil
    @at_room = args[:at_room] || nil
    @volume = args[:volume] || 0
    move_to @at_room
  end

  attr_accessor :label, :at_room, :volume

  def vup
    if @volume != 10
      @volume += 1
      update_room_noise @volume, @at_room
    else
      return @volume = 10
    end
  end

  def vdown
    if @volume != 0
      @volume -= 1
      update_room_noise @volume, @at_room
    else
      return @volume = 0
    end
  end

  def move_to destination_room
    if destination_room
      destination_room.add_object self.label, self
      leave_room self.at_room
      update_room_noise self.volume, destination_room
      update_room_noise self.volume, self.at_room
      @at_room = destination_room
    end
  end

  def leave_room source_room
    if source_room
      source_room.remove_object self.label, self
    end
  end

  def update_room_noise volume, room
    if room
      room.noise_update
    end
  end
end
