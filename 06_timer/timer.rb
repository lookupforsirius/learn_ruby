class Timer
  #write your code here
  attr_accessor :seconds,:minutes,:hours
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end
  def time_string
    if @seconds > 59
      @minutes = @seconds/60
      @seconds = @seconds - (minutes*60)
    end
    if @minutes > 59
      @hours = @minutes/60
      @minutes = @minutes - (hours*60)
    end
    if @seconds <10
      return "0#{@hours}:0#{@minutes}:0" + @seconds.to_s
    else
      return "0#{@hours}:0#{@minutes}:#{@seconds}"
    end
    
  end
end
