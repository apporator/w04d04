
def uniq(arr)
    raise "wrong input type" unless arr.is_a?(Array)
    answer = [] 

    arr.each {|ele| answer << ele unless answer.include?(ele)}

    answer
end

class Array
     def two_sum
        answer = []
        self.each.with_index do |ele1, ix1|
            self.each.with_index do |ele2, ix2|
                answer << [ix1, ix2] if (ele1 + ele2) == 0 && ix1 < ix2
            end
        end
        answer
     end
end

def my_transpose(arr)
    answer = Array.new(arr[0].length) { Array.new(arr.length)}
    arr.length.times do |row|
        arr[0].length.times do |col|
            answer[col][row] = arr[row][col]
        end
    end
    answer
end