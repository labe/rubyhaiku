module Nouns
  %w(sound seas nuts mermaids).each do |article|
    define_method(article) do
      article
    end
  end

  %w(phase).each do |article|
    define_method(article) do |argument|
      article + " " + argument.to_s
    end
  end
end
