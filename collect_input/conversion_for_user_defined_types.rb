require 'forwardable'

class Meters
  extend Forwardable

  def_delegators :@value, :to_s, :to_int, :to_i

  def initialize(value)
    @value = value
  end

  def -(other)
    self.class.new(value - other.value)
  end

  protected

  attr_reader :value
end

def report_altitude_change(current_altitude, previous_altitude)
  change = current_altitude.to_meters - previous_altitude.to_meters
end

class Feet
  def to_meters
    Meters.new((value * 0.3048).round)
  end
end
