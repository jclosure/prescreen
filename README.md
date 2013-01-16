# Prescreen

PreScreen Test:
Without using any built in date or time functions, write a function or method that accepts two mandatory arguments. The first argument is a string of the format "[H]H:MM {AM|PM}" and the second argument is an integer. Assume the integer is the number of minutes to add to the string. The return value of the function should be a string of the same format as the first argument. For example Add Minutes("9:13 AM", 10) would return "9:23 AM". The exercise isn't meant to be too hard. I just want to see how you code. Feel free to do it procedurally or in an object oriented way, whichever you prefer. Use Ruby. Write production quality code.

	Notable Characteristics:

		* No built in Date or Time libraries were used
		* Implemented as a Library
		* TimeCalculator wrapped in a module for namespacing
		* Full set of specs verifying requirements cited above
		* Default Rake task will run specs
		* Implementation delivered as a gem
		* Created binary wrapper for executing TimeCalculator's behaviors from cli

Note to Employer: This was an enjoyable excersise.  It was designed and developed using BDD style, red-green-refactor-driven, approach.  See time_calculator_spec.rb for coverage.  I hope to be able to speak with you soon.

Thanks,

Joel

## Get this code

From the command line type:

    $ git clone https://github.com/jclosure/prescreen.git'

And then type (note all commands below assume you are in the prescreen directory):

    $ cd prescreen

## Installing the Gem

Add this line to your application's Gemfile:

    gem 'prescreen', :git => 'https://github.com/jclosure/prescreen.git'

And then execute:

    $ bundle install

Alternatively, if you've cloned the repo, from the prescreen directory, you can install the gem for general purpose use in your system like this:

	$ rake build
	$ gem install

## Usage

You can use this library in your applications with code similar to:

	require 'prescreen'
	include Prescreen

	time_calculator = TimeCalculator.new

	time = "8:00 AM"
	adjusted_time = time_calculator.add_minutes(time, 2)


You can run the commandline wrapper for this library by doing the following:

From the prescreen directory, execute:

	$ ./bin/timecalculator add_minutes "8:00 AM" 2

Or if you have installed for general system use, from anywhere in your system you can type:

	$ timecalculator add_minutes "8:00 AM" 2

## Run the tests


Run the tests by executing (from the prescreen directory)

    $ rake

Alternatively you can do the following

	$ bundle
	$ rspec


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
