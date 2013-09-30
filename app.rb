Dir[File.dirname(__FILE__) + '/models/*.rb'].each { |file| require file }
Dir[File.dirname(__FILE__) + '/modules/*.rb'].each { |file| require file }

if ARGV.any?
  include CliHelper
  case ARGV[0]
  when "--help"
    print_options
  when "--wtf"
    exec "cat readme.md"
  when "--articles"
    print_articles_and_errata
  when "--adjs"
    print_adjs
  when "--verbs"
    print_verbs
  when "--nouns"
    print_nouns
  when "--all"
    print_all
  end
  exit
else
  include Poetry
end

