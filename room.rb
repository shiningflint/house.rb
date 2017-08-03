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

  def add_object object_name=nil, object=nil
    unless self.objects[object_name]
      self.objects[object_name] = object
    end
  end

  def remove_object object_name=nil, object=nil
    unless self.objects[object_name]
      self.objects.delete(object_name)
    end
  end
end
