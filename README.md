# Prescreen

PreScreen Test:
Without using any built in date or time functions, write a function or method that accepts two mandatory arguments. The first argument is a string of the format "[H]H:MM {AM|PM}" and the second argument is an integer. Assume the integer is the number of minutes to add to the string. The return value of the function should be a string of the same format as the first argument. For example Add Minutes("9:13 AM", 10) would return "9:23 AM". The exercise isn't meant to be too hard. I just want to see how you code. Feel free to do it procedurally or in an object oriented way, whichever you prefer. Use Ruby. Write production quality code.

	Notable Characteristics:

		* Implemented as a Library
		* TimeCalculator wrapped in a module for namespacing
		* Full set of specs verifying requirements cited above
		* Default Rake task will run specs
		* Implementation delivered as a gem
		* Created binary wrapper for executing TimeCalculator's behaviors from cli

## Get this code

From the command line type:

    git clone https://github.com/jclosure/prescreen.git'

And then type:

    $ cd prescreen

Build and run the tests by executing

    $ rake

Alternatively you can do the following

	$ bundle
	$ respec

## Usage

Get 

## Installing the Gem

Add this line to your application's Gemfile:

    gem 'prescreen', :git => 'https://github.com/jclosure/prescreen.git'

And then execute:

    $ bundle

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
