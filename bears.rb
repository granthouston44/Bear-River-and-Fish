class Bear

attr_reader :name, :type

def initialize(name, type)
  @name = name
  @type = type
  @stomach = []
end

def stomach
  return @stomach.size
end

def take_fish(river,fish)
  river.lose_fish(fish)
  @stomach.push(fish)
end

def roar
  return "RAAAWWWWRRRRR"
end

end
