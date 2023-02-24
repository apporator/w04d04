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

        # it "starts the first stack in ascending order" do
        #     expect()
        # end
        
        it "sets 2 stacks as empty"
        it "creates height number of elements" do
            expect(tower.stacks[0].length).to eq(5)
        end

    end
end

