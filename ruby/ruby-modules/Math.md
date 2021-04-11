#Math
In this video, we're going to look at the Math module in Ruby.
As you might expect based on the name, it provides math functionality such as sins, logs, tangents, and more.
However, none of these methods really really make sense to operate on an instance of a class.
In this case, we interact with the Math module using class methods.

##Techer's Notes
**Links**
    [Ruby Math RDoc](https://ruby-doc.org/core-2.2.2/Math.html)

**Code Samples**
`
puts Math::E          # => 2.718281828459045
puts Math::PI         # => 3.141592653589793
puts Math.sqrt(9)     # => 3.0
puts Math.cos(1)      # => 0.5403023058681398
puts Math.hypot(2, 2) # => 2.8284271247461903
puts Math.log(2, 10)  # => 0.30102999566398114
puts Math.log(2, 12)  # => 0.2789429456511298
`
