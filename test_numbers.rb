require './numbers'
require "minitest/autorun"

describe Numbers do

  describe "when numbers is not empty" do
    describe "when there is one number with most occurrences" do
      before do
        @result = Numbers.mode(1,2,3,4,5,6,6,7,8,9,6,6,6)
      end

      it "returns 6" do
        Numbers.mode(1,2,3,4,5,6,6,7,8,9,6,6,6).must_equal(6)
      end
    end

    describe "when there are more than one number with most occurrences" do
      it "returns the first number with most occurrences" do
        Numbers.mode(1,2,3,4,5,6,6,7,8,9,1,1,1,1,6,6,6).must_equal(1)
      end
    end
  end

  describe "when numbers is empty" do

    it "should return nil" do
      assert_nil(Numbers.mode)
    end
  end

end
