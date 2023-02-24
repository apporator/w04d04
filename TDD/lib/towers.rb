class Towers

    attr_reader :stacks
    def initialize(height)
        @stacks = Array.new(3) {Array.new}
    end
end