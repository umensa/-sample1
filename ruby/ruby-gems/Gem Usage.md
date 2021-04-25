#Gem Usage
Now that a gem is installed, we need to know how to use it.

##Techer's Notes
**Code Samples**

Once a gem is installed, it is used by calling the `require` statement followed by the name of the gem. If we were using the `money` gem, it would look like this:
`
require 'money'
`
##Challenge Task
We have some code that uses the money gem, but that gem isn't loaded. Add a line of code to load the money gem.

___try_money.rb___

	# LOAD THE money GEM HERE
	require 'money'

	money = Money.new(1000, "USD")
