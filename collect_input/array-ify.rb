def log_reading(reading_or_readings)
  readings = Array(reading_or_readings) # Array() is very forgiving
  readings.each do |reading|
    pts "[READING] %3.2f" % reading.to_f
  end
end
