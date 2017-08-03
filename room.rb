class Room
  def initialize room_name,
    objects={},
    noise=0

    @name = room_name
    @objects = objects
    @noise = noise
  end

  attr_accessor :name, :objects, :noise

  def noise_update
    @noise = 0
    if @objects
      @objects.each do |key, value|
        if defined? value.volume
          @noise += value.volume
        end
      end
    end
  end
end
