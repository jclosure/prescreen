require 'spec_helper'

include Prescreen

#[H]H:MM {AM|PM}
describe TimeCalculator, "behaving as expected" do
	before :all do
		@timecalculator = TimeCalculator.new
	end

	it "handles time with a single digit hour" do
		time = "8:00 AM"
		minutes = 0
		result = @timecalculator.add_minutes(time, minutes)
		result.should == "8:00 AM"
	end

	it "handles time with a double digit hour" do
		time = "10:00 AM"
		minutes = 0
		result = @timecalculator.add_minutes(time, minutes)
		result.should == "10:00 AM"
	end

	it "handles time that makes a single digit hour double digit hour" do
		time = "9:59 AM"
		minutes = 1
		result = @timecalculator.add_minutes(time, minutes)
		result.should == "10:00 AM"
	end

	it "handles time with minutes less than an hour" do
		time = "8:00 AM"
		minutes = 1
		result = @timecalculator.add_minutes(time, minutes)
		result.should == "8:01 AM"
	end

	it "handles time with minutes more than an hour" do
		time = "8:00 AM"
		minutes = 60
		result = @timecalculator.add_minutes(time, minutes)
		result.should == "9:00 AM"
	end

	it "handles time with minutes that pass midnight" do
		time = "11:59 PM"
		minutes = 2
		result = @timecalculator.add_minutes(time, minutes)
		result.should == "12:01 AM" 
	end

	it "handles time with minutes that pass noon" do
		time = "11:59 AM"
		minutes = 2
		result = @timecalculator.add_minutes(time, minutes)
		result.should == "12:01 PM" 
	end

	

end