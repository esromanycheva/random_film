class Film
  attr_reader :name, :producer, :year

  def initialize(name, producer, year)
    @name = name
    @producer = producer
    @year = year
  end

  def to_s
    "#{name} (#{year})"
  end
end

