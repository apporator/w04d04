require "rspec"
require "methods.rb"

describe "uniq" do

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

describe "Array#two_sum" do
    subject(:arr) { [-1, 0, 2, -2, 1] }

    it "returns a 2D array" do
        expect(arr.two_sum).to be_a(Array)
        expect(arr.two_sum[0]).to be_a(Array)
    end

    it "returns array of coordinates where eles at those coords add up to zero" do
        answer = arr.two_sum
        expect(answer.all? { |coords| (arr[coords[0]] + arr[coords[1]]) == 0}).to be(true)
    end

    it "returns pairs where the first coordinate is less than the second" do
        expect(arr.two_sum.all? { |(first, second)| first < second}).to be(true)
    end

    it "returns coords where the first coordinate of a set is less than the first coord of the next second" do
        expect((0...arr.two_sum.length - 1).all? {|idx| arr.two_sum[idx][0] < arr.two_sum[idx+1][0]}).to be(true)
    end

    it "only returns unique pairs of coords" do
        expect(arr.two_sum.all? { |(first, second)| first != second}).to be(true)
    end

end

describe "my_transpose" do
    subject(:arr) { [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
            ] }
    it "does not call the built in transpose method" do
        expect(arr).to_not receive(:transpose)
        my_transpose(arr)
    end

    it "returns a transposed version of the input array" do
        expect(my_transpose(arr)).to eq(arr.transpose)
    end

end