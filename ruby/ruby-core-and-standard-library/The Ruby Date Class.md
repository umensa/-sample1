#The Ruby Date Class
The Ruby Date class is used to represent dates in Ruby and it has no concept of time.
So, for example, you could represent the day you were born using the date class, but not the specific time.

##Techer's Notes
**Links**

    Ruby Date Documentation (https://ruby-doc.org/stdlib-2.2.2/libdoc/date/rdoc/Date.html)

**Code Samples**
Date Formatting Strings
`
Date (Year, Month, Day):
  %Y - Year with century if provided, will pad result at least 4 digits.
          -0001, 0000, 1995, 2009, 14292, etc.
  %C - year / 100 (rounded down such as 20 in 2009)
  %y - year % 100 (00..99)
``
  %m - Month of the year, zero-padded (01..12)
          %_m  blank-padded ( 1..12)
          %-m  no-padded (1..12)
  %B - The full month name (``January'')
          %^B  uppercased (``JANUARY'')
  %b - The abbreviated month name (``Jan'')
          %^b  uppercased (``JAN'')
  %h - Equivalent to %b
``
  %d - Day of the month, zero-padded (01..31)
          %-d  no-padded (1..31)
  %e - Day of the month, blank-padded ( 1..31)
``
  %j - Day of the year (001..366)
`
_**Code Samples**_

_Instantiate a new date object:_
`
Date.new
Date.new(2015, 3, 1)
`
_Parsing dates from strings:_
`
Date.parse("March 1st, 2015")
Date.parse("It's 2015, everyone!")
`
_We can also pass in our own format string to the `strptime` method:_
`
Date.strptime("It's 2015, everyone!", "It's %Y, everyone!")
`
_Dates can be manipulated with mathematical operators:_
`
Date.today
Date.today + 1
Date.today - 1
Date.today << 1 (subtract month)
Date.today >> 1 (add month)
`
_Format strings can be passed as well:_
`
Date.today.strftime("%Y %m, %d")
Date.today.strftime("%m %d, %Y")
`
