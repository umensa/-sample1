#Logger
As we've been going along coding programs so far, when we need to know the value of a variable or debug some piece of data, we've generally been using print or puts statements of some sort.
This works just fine for smaller programs.
However, as you start to write larger programs, it can be cumbersome and sometimes ineffective to stop the program and print things to the screen.
In cases like this, we can use something called log to write data to a stream.
The stream can be a file, standard output, the network, and more.
We can write things like the current state of our classes and objects, errors, and more.
The Ruby standard library comes with logging functionality in the form of the Logger class from the Standard Library

##Techer's Notes
**Links**

    Logger Documentation (https://ruby-doc.org/stdlib-2.2.2/libdoc/logger/rdoc/Logger.html)

##Challenge Task 1 of 2
Require the 'logger' library so it can be used.

___logger.rb___
	
	require 'logger'

##Challenge Task 2 of 2
Initialize a new `Logger` instance to a variable called `logger`. The `Logger` instance will take one argument, which should be standard output (`STDOUT`).

___logger.rb___

	require 'logger'
	logger = Logger.new(STDOUT)