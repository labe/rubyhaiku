module ArticlesAndErrata
   %w(the a an each their all of most some many lots these those lot few).each do |article|
    define_method(article) do |argument|
      p argument if argument.class != String
      argument
    end
  end
end
