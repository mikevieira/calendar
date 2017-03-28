module TasksHelper

def shortday(date)
  day = date.to_s[-2,2]
  return day
end 

def idcreate(date)
  id = date.to_s.tr('-','')
  return id
 end 
end
