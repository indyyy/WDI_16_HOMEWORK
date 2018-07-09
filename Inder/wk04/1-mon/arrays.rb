require 'pry'


# Make an Array with Days of the Week

days_of_the_week = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday','Saturday', 'Sunday' ]

# Remove 'Sunday' last element from array
first_day = days_of_the_week.pop

# Make 'Sunday' the first element in the array
days_of_the_week.unshift(first_day)


weekdays = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday']
weekend_days = ['Saturday', 'Sunday']
# weekdays = days_of_the_week.select {|day| day.include?("Mon")}
# weekend_days = days_of_the_week.select {|days|days.include?("Sun")}

days_of_the_week = [weekdays, weekend_days]

# sort days of the week
weekdays.sort
weekend_days.sort



binding.pry