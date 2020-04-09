require "byebug"

class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    display_time(@seconds)
  end

  def display_time(num)
      display_hrs(num)
  end

  def display_seconds(num)
    time_style = "00:00:00"
    if num < 10
      time_style = "0#{num}"
      return time_style
    else
      time_style = "#{num}"
    end
  end

  def display_hrs(num)
    time_style = "00:00:00"
    hrs = num/3600
    remainder = num % 3600
    mins = remainder / 60
    secs = remainder % 60
    time_style = "0#{hrs}:0#{mins}:#{display_seconds(secs)}"
    time_style
  end
end
