def sort_array_asc(arr)
    arr.sort {|a, b| a <=> b}
end

#In order to sort our list of dishes, we will have to iterate over the array and compare every set of items
#Enumerator that allows us to yield two elements at once.

def sort_array_desc(arr)
    arr.sort {|a, b| a <=> b}.reverse
end

def sort_array_char_count(arr)
    arr.sort {|a, b| a.length <=> b.length}
end

def swap_elements(arr)
    arr[1], arr[2] = arr[2], arr[1]
    arr
end

def reverse_array(arr)
    arr.reverse
end

def kesha_maker(array)
    array.each { |element| element[2] = "$"}
end

def find_a(array)
    array.find_all do
        |letter| letter[0] == "a"
    end
    #array.select { |word| word.start_with?('a') }
end 

def sum_array(array)
    sum = 0
    array.each do |num|
      sum+=num
    end
    sum
  
    # using reduce method
      # array.reduce(:+)
  
    # using inject method (short)
       # array.inject(:+)
  
    # using inject method (long)
       # array.inject do |sum,x|
       #  sum + x
       # end
  end
  
  def add_s(array)
    array.collect do |word|
      if array[1] == word
        word
      else
        word + "s"
      end
    end
  end