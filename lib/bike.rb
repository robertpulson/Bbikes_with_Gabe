# Define Bike Class
class Bike
  def initialze
    fix!
  end

  def broken?
    @broken
  end

  def break!
    @broken = true
  end

  def fix!
    @broken = false
  end
end
