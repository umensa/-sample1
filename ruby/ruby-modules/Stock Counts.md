#Stock Counts
In this video, we begin to implement our inventory stock counts.

##Techer's Notes
**Code Samples**
We set up a couple of helper methods in our Inventoryable class to keep up with stock counts:
`
module Inventoryable
``
  def stock_count
    @stock_count ||= 0
  end
``
  def stock_count=(number)
    @stock_count = number
  end
``
  def in_stock?
    stock_count > 0
  end
``
end
`
