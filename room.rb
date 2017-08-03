class Room
  def initialize room_name
    @name = room_name
    @objects = {}
  end

  attr_accessor :name, :objects
end
