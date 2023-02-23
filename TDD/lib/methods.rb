
def uniq(arr)
    raise "wrong input type" unless arr.is_a?(Array)
    answer = [] 

    arr.each {|ele| answer << ele unless answer.include?(ele)}

    answer
end