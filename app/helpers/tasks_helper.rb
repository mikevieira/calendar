module TasksHelper

def shortday(date)
  day = date.to_s[-2,2]
  return day
end 

def idcreate(date)
  id = date.to_s.tr('-','')
  return id
 end 


def get_month_name(id)
 case id
    when 1 then name = "January"
    when 2 then name = "February"
    when 3 then name = "March"
    when 4 then name = "April"
    when 5 then name = "May"
    when 6 then name = "June"
    when 7 then name = "July"  
    when 8 then name = "August"
    when 9 then name = "September"
    when 8 then name = "October"
    when 8 then name = "November"
    when 8 then name = "December"
  end
  return name
end

end
