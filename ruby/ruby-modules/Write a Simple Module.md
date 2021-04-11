#Write a Simple Module
Writing a module is very similar to writing a class.
Modules follow the same rules as classes and use CamelCase for naming.
In this video, we're going to write the simplest possible module in Ruby.

##Techer's Notes

**Code Samples**
Here is our simple module:

`module SimpleModule
end`

We can load it in to `irb` by using the `load` keyword and passing the file path:

`irb> load "./simple_module.rb"
=> true`

We can add a constant inside of the `SimpleModule` by typing it's name in all upper case letters:

`module SimpleModule
  VERSION = 1.0
end`

That can then be accessed using the constant resolution operator (::):

`irb> SimpleModule::VERSION
=> 1.0`
