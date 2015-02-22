Documentation of the Time calculations APP
========================================================
author: Gregorio 
date: 22/02/2015
***
<br>
<br>
<br>
***
![Time](Time.jpg)


Time 
========================================================

From Wikipedia, the definition of **Time** is:
<br>
Time is a measure in which events can be ordered from the past through the present into the future, and also the measure of durations of events and the intervals between them.
Time is often referred to as the fourth dimension, along with the spatial dimensions.
<br>

**Introducing this app**
<br>
This app is part of the Coursera course Developing Data Products. It is a very simple app that it's only intention is to Demonstrate what we have learned during the course.
<br>

You are ask to introduce your date of birth, a range of date that you would like to calculate the duration between them and/or a date that you wuld like to know which day of the week is.


Special Age Calculator
========================================================
The user is required to provide its birthday using a **Date input - Widget**
<br>
The calculations performed are:

```r
fdbirth <- function(birth) round(difftime(now(),birth,units="days"),1)
fwbirth <- function(birth) round(difftime(now(),birth,units="weeks"),1)
fweekdbirth <- function(birth) wday(birth,label = TRUE, abbr = FALSE)
```

Calculate duration between two dates
========================================================
This calculates the **duration**, counting the day count and the number of days, months and years between two dates
The calculations performed are:

```r
frange <- function(start,end) round(difftime(end,start,units="days"),1)
```

Weekday Calculator  What Day is this Date?
========================================================
Want to know which day of the week you were born? Need to find out if the day you met your significant other was a Monday or Tuesday? Have to settle that argument with a friend about when you graduated? Or do you just want to find out if your favorite holiday will fall on a weekend next year? Just enter the date and find out the day of the week and other fun facts about your specific date.

```r
fweekdate <- function(date) wday(date,label = TRUE, abbr = FALSE)
```
