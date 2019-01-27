require 'pry'

def my_all?(collection)    #defining method with argument
  i = 0                    #setting a counter
  block_return_values = []   #setting a blank array to store yield return values 
  while i < collection.length    #set while statement to loop through the collection
    block_return_values << yield(collection[i])  #adding yield return values to array 
    i += 1                   #counter
  end
  
  if block_return_values.include?(false)     #setting return values of method
    false
  else
    true 
  end
end