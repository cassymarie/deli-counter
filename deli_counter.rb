katz_deli = []
other_deli = ["Logan", "Avi", "Spencer"]
another_deli = ["Amanda", "Annette", "Ruchi", "Jason", "Logan", "Spencer", "Avi", "Joe", "Rachel", "Lindsey"]


def line(line_array)
    if line_array.size < 1 
        current_line = "The line is currently empty."
    else
        current_line = "The line is currently:"
        line_array.each_with_index {|person, index| current_line += " #{index+1}. #{person}"}
    end
    puts current_line
end


def take_a_number(current_line,new_customer)
    puts "Welcome, #{new_customer}. You are number #{current_line.size+1} in line."
    current_line << new_customer
end

def now_serving(current_line)
    if current_line.size < 1
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{current_line[0]}."
        current_line.shift
    end
end

now_serving(katz_deli)