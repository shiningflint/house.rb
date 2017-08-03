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
