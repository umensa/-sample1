#The Ruby Time Class
The DateTime and Time classes add an additional component compared to the date class -- the concept of a time of day.
The Date class allows us to work with individual dates but has no concept of a time of day.
If we want to get specific about the time of day, we have to use the DateTime or Time classes.
Let's go ahead and see how that works now using Workspaces.

##Techer's Notes
**Links**

    Time documentation (https://ruby-doc.org/core-2.2.2/Time.html)

**Code Samples**
Now let's take a look at the DateTime and Time classes.
When we're representing dates and times and need a time of day component, these are the classes we would use.

There is little difference between the date and time classes these days.
In older versions of Ruby, there was an internal difference in how they were represented and Time instances could only go up to the year 2038 but these days the differences are not as big.
Just pick one class and use use.
We're going to work with the Time class in this video.

Instantiate now:
`
Time.new
Time.new(2011)
Time.new(2014, 2, 1)
``
time = Time.new
time.hour
time.min
time.sec
time.monday?
time.month
time.day
`
Addition and subtraction is seconds:
`
time + 1  is 1 second
time + (60) for 1 minute
time + (60 * 60) for 1 hour
`
We can also see if one time is before or after another
`
time < Time.now
Time.now > time
`
We can format using strftime

`time.strftime("%m %d %Y %I:%M %p")`
