module TasksHelper

def shortday(date)
  day = date.to_s[-2,2]
  return day
end 

end
