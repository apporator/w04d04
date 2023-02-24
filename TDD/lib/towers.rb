class Towers

    attr_reader :stacks
    
    def initialize(height)
        @stacks = Array.new(3) {Array.new}

        height.downto(1) do |i|
            @stacks[0] << i
        end
    end

    def won?
        true
    end

    def move(from_stack, to_stack)
        if valid?(from_stack) && valid?(to_stack)
        end
        #add logic to ensure from stack has elements
        #add logic for popping and pushing
    end



    private
    def valid?(stack_idx)
        stack_idx.between?(0,2)
    end
end