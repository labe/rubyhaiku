##What is this?

Not sure. I guess it's a DSL. A rather hackabout kind of DSL? Mostly it's just an excuse for me to play around with Ruby metaprogramming and think about the constructs of language. I think it *started* as a sandbox for implementing a hash of lambdas and procs. Some amount of inspiration came from reading about "[Black Perl](http://en.wikipedia.org/wiki/Black_Perl)", the fully executable poem written entirely in pure Perl script.

Essentially, this code allows you to write something like

<code>all the red pandas tumble</code>

and it will print to the console

<code>rumble bumble tumble jump!</code>

and produce

```
#<Panda:0x007f80d20cdc08 @desc_count=1, @action=:tumble, @descriptor="red">
```

##How to play with it
1. Fork this repo
2. Clone it onto your local machine
3. Either edit <code>examples.rb</code> or create a new file in your cloned version's folder root directory and put <code>require './app'</code> at the top of the file.

The vocabulary is fairly limited. From the command line, you can type <code>$ ruby examples.rb --help</code> and see a menu of commands to print out the available articles, nouns, verbs and adjectives.

The syntax structure is more or less:

```
[<article>] [<adjective>] <actor> <verb> [<article>] [<noun>]
```

where the elements in brackets [] are optional.

* Nouns cannot currently have adjectives
* Anything can be an actor, so long as the syntactic structure is upheld
* Verbs can only be conjugated for simple present tense. <code>the red panda tumbles</code> is valid, but <code>red pandas tumbling</code> is not
* An animal can have unlimited adjectives but only one verb
* An animal can verb at maximum one noun
* Unlimited article usage! Go crazy!

##Um, "red pandas tumble" isn't poetry.

[Basho](http://thegreenleaf.co.uk/hp/basho/00bashohaiku.htm) and his countless admirers might disagree.

Also, [this video](http://www.youtube.com/watch?v=oimTxlCi36E). I dare you to say those red pandas aren't poetry in cuddly, adorable, tumbling motion.
