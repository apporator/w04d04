require "rspec"
require "methods.rb"

describe "#uniq" do

    it "should take in an array" do
        expect {uniq([1,2,3])}.to_not raise_error()
    end

    it "throws error if argument is not an array" do
        expect {uniq("2")}.to raise_error("wrong input type")
        expect {uniq(2)}.to raise_error("wrong input type")
    end

    it "should return an array" do
        expect(uniq([1,2,3])).to be_a(Array)
    end

    it "should return a NEW array" do
        arr = [1,2,3]
        expect(uniq(arr)).to_not be(arr)
    end

    it "should return an array with no dupe elements" do
        expect(uniq([1, 2, 1, 3, 3])).to eq([1,2,3])
    end
end