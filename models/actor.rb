class Actor
  attr_accessor :desc_count

  def initialize
    @desc_count = 0
  end

  def method_missing(sym, *args)
    ACTIONS[sym].call(*args)
    @action = sym
    self
  end

  private

  def increase_desc_count
    self.desc_count += 1
  end
end
