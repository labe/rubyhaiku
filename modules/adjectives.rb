module Adjectives
  %w(exhausted cuddly warm silent red bushy still frantic busy happy playful).each do |adj|
    define_method(adj) do |argument|
      argument.send(:increase_desc_count)
      argument.send(:instance_variable_set, "@descriptor", adj) if argument.desc_count == 1
      argument.send(:instance_variable_set, "@descriptor#{argument.desc_count}", adj) if argument.desc_count > 1
      p argument
    end
  end
end
