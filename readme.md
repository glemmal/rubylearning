
[![Build Status](https://travis-ci.org/htw-imi-info3/rubylearning.png?branch=master)](https://travis-ci.org/htw-imi-info3/rubylearning)

# Rubylearning Project

This is a project that illustrates learning a programming language by writing unit tests.

The Idea is to create a file for each concept, e.g.


| File Name               | Team |
| ------------------------|------|
|arrays1.rb & arrays2.rb  |      |                
|classes.rb               |      |   
|control_structures.rb    |      |              
|eachTo.rb                |      |  
|enumerator.rb            |      |      
|equality.rb              |      |    
|fileio.rb                |      |  
|hashes.rb                |      |  
|loops.rb                 |      | 
|method_definitions.rb    |      |              
|method_returns.rb        |      |          
|reflections.rb           |      |       
|regex.rb                 |      | 
|rspec_expectations.rb    |      |              
|strings.rb               |      |   
|symbols.rb               |      |   
|yields-and-blocks.rb     |      |             



# Things that can be added



| File Name                   | Team |
| ----------------------------|------|
| reading_and_writing_files.rb|      |
| duck_typing.rb              |      |
| exceptions.rb               |      |
|                             |      |
|                             |      |
|                             |      |
|                             |      |
|                             |      |
|                             |      |
|                             |      |
|                             |      |
|                             |      |
|                             |      |



## Getting started

### Installing RSpec

First, you need to install rspec. You can either install it directly with

    gem install rspec

Or use [bundler](http://bundler.io/) to install it (which you will need for rails anyway)

    gem install bundler
    bundle

The latter installs all gems listed in `Gemfile` and creates Gemfile.lock stating the actual versions of the installed gems.


### Calling the Tests

You can either run all tests with

    rspec about/*.rb

or individual files with

    rspec <filename>

# Amend this project and share your changes!

Please make amendmends to this project if you work through the ruby examples. The task for 
WS2014 will be: add a link to the documentation for each topic. Also feel free to add things you find interesting, clarify things that were unclear to you etc. 

On your way through it, you also practice using git and github to exchange source code.

See and amend [git-commands.md](git-commands.md) for useful git commands.

Please make sure that all examples pass before pushing to github - otherwise Travis will bite you!
[https://travis-ci.org/htw-imi-info3/rubylearning](https://travis-ci.org/htw-imi-info3/rubylearning)

# Ruby Learning Resources

* [Differences when coming from Java](https://www.ruby-lang.org/en/documentation/ruby-from-other-languages/to-ruby-from-java/)
* A need little tutorial on a [command line app](http://neurogami.com/content/neurogami-10_minutes_to_your_first_Ruby_app/)
* (old Version of)[Pickaxe Book](http://ruby-doc.com/docs/ProgrammingRuby/)