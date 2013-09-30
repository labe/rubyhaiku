module Actions
  ACTIONS = {
    :tumble   => Proc.new { puts "rumble bumble tumble jump!" },
    :scramble => Proc.new { puts "hurry flurry scramble leap!" },
    :approach => Proc.new { puts "inching closer and closer" },
    :stir     => Proc.new { puts "rustle rustle" },
    :horde    => Proc.new { |x| puts "scurrying #{x} to the vault!" },
    :yawn     => Proc.new { puts "time for coffee" },
    :graduate => Proc.new { puts "WAHOO!!!!" },
    :carry    => Proc.new { |x| puts "moving #{x} here there everywhere" },
    :gather   => Proc.new { |x| puts "time to harvest #{x}" },
    :prepare  => Proc.new { |x| puts "getting ready for #{x}!" },
    :finish   => Proc.new { |x| puts "almost done with #{x}!"},
    :seek     => Proc.new { |x| puts "looking for #{x}. marco? (polo!)"},
  }
end
