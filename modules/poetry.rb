require './app'

module Poetry
  include ArticlesAndErrata
  include Adjectives
  include Nouns
  include Actions

  def method_missing(sym, *args)
    if args.any? && args.first.class != String
      class_name = classifize(sym)
      actor = make_actor(class_name)
      args.first.class != Array ? actor.send(*args) : actor.send(*args.first)
    elsif args.any? && args.first.class == String
      return infinitize(sym),args.first
    else
      infinitize(sym)
    end
  end

  def classifize(sym)
    sym.to_s.singularize.capitalize
  end

  def make_actor(class_name)
    Object.const_defined?(class_name) ? Object.const_get(class_name).new : Object.const_set(class_name, Class.new(Actor)).new
  end

  def infinitize(verb)
    return verb.to_s.singularize.to_sym if verb.to_s[-1] == "s"
    verb
  end

  def i;end

  %w(i ii iii iv v).each do |num|
    define_method(num) do
      puts "-----"
    end
  end
end
