Writing a method that takes a block is very similar to writing any other method. In this video, you'll learn to write your own block methods.

#Teacher's Notes

**Code Samples**

Our first block:

`def block_method
  puts "This is the first line in block_method."
end
`
`block_method do
  puts "This statement is called from the block."
end`

This doesn't do anything! Why? 
We need to tell Ruby what to do with the block.
We do that with the `yield` keyword which will jump out of the method and execute the block:
`
def block_method
  puts "This is the first line in block_method."
  yield
  puts "This statement is after the yield keyword."
end
``
block_method do
  puts "This statement is called from the block."
end
`
This will print out:
`
This is the first line in block_method.                                       
This statement is called from the block.                                      
This statement is after the yield keyword.` 
