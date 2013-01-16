# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)


Gem::Specification.new do |gem|
  gem.name          = "prescreen"
  gem.version       = "0.0.1"
  gem.authors       = ["Joel Holder"]
  gem.email         = ["jclosure@gmail.com"]
  gem.description   = %q{Small coding test}
  gem.summary       = %q{Without using any built in date or time functions, write a function or method that accepts two mandatory arguments. The first argument is a string of the format "[H]H:MM {AM|PM}" and the second argument is an integer. Assume the integer is the number of minutes to add to the string. The return value of the function should be a string of the same format as the first argument. For example Add Minutes("9:13 AM", 10) would return "9:23 AM". The exercise isn't meant to be too hard. I just want to see how you code. Feel free to do it procedurally or in an object oriented way, whichever you prefer. Use Ruby. Write production quality code. }
  gem.homepage      = ""
  
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
end
