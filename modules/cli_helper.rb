module CliHelper
  def print_options
    puts %Q(
  --wtf       displays the rationale behind this project
  --articles  displays a list of all accepted articles/errata
  --adjs      displays a list of all accepted adjectives
  --verbs     displays a list of all accepted verbs
  --nouns     displays a list of all accepted nouns
  --all       displays a list of all accepted words
    )
  end

  def print_articles_and_errata
    p %w(the a an each their all of most some many lots these those lot few).sort
  end

  def print_adjs
    p %w(exhausted cuddly warm silent red bushy still frantic busy happy playful).sort
  end

  def print_verbs
    include Actions
    p ACTIONS.map { |k,v| k.to_s }.sort
  end

  def print_nouns
    p (%w(sound seas nuts mermaids) + %w(phase)).sort
  end

  def print_all
    print_articles_and_errata
    print_adjs
    print_verbs
    print_nouns
  end
end
