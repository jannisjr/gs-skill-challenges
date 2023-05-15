class TrackList
  def initialize
    @list = []
  end
  def track(name)
    fail "Please enter a name" if name == ""
    @list << name
  end
  def print
    p @list
  end
end