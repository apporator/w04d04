require "rspec"
require "towers.rb"

describe Towers do
    subject(:tower) {Towers.new(5)}
    describe "Towers#initialize" do
        # before(:each) do 
        #     t = Towers.new(5)
        # end
        it "should create 3 stacks" do
            expect(tower.stacks.length).to eq(3)
        end

        it "starts the first stack in ascending order" do
            expect(tower.stacks[0]).to eq([5,4,3,2,1])
        end
        
        it "sets 2 stacks as empty" do
            expect(tower.stacks[1]).to be_empty
            expect(tower.stacks[2]).to be_empty
        end

        it "creates height number of elements" do
            expect(tower.stacks[0].length).to eq(5)
        end

    end

    describe "Towers#won?" do
    
        it "return false if all elements are not in the last stack" do
            expect(tower.won?).to be(false)
        end

        it "return false if all elements are not in order"

        it "returns true if all elements are in order in the last stack"
    end

end

