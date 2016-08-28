### LEAP YEAR
# Goal : determine if a year is a leap year
# Inputs : year
# Outputs : true or false for if its a leap year or not
# Note :  on every year that is evenly divisible by 4
#         except every year that is evenly divisible by 100
#         unless the year is also evenly divisible by 400


def leap_year?(year = Time.new.year)
  # If it's divisible by 4 but not 100 --OR-- it's divisible by 400 (parens unnecessary, just for readability)
  if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
    return true
  else
    return false
  end
end
