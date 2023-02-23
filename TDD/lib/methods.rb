
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
                answer << [ix2, ix1] if (ele1 + ele2) == 0 #&& ix2 > ix1
            end
        end
        answer
     end
end