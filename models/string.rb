class String
  def singularize
    return self.gsub(/(\w+)(ies)\z/) { "#{$1}y" } if self.match(/(\w+)(ies)/)
    return self[0..-3] if self.match(/(\w+)(ses)\z/) || self.match(/(\w+)(xes)\z/) || self.match(/(\w+)(zes)\z/)
    return self[0..-2] if self.match(/(\w+)(s)\z/)
    self
  end
end
