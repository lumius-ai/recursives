# frozen_string_literal: true
require_relative '../lib/merge_sort'

describe "Merge sort function" do
  describe "Merge function" do
    xit "merges two arrays" do
      a = [0, 2, 4]
      b = [1, 3, 5]
      
      expect(merge(a, b)).to eq([0, 1, 2, 3, 4, 5])
    end

    xit "merges uneven arrays" do
      a = [0, 2, 4]
      c = [1, 3]
      expect(merge(a, c)).to eq([0, 1, 2, 3, 4])
    end
  end

  describe "Merge sort function" do
    it "sorts an array" do
      a = [1, 3, 5, 7, 9, 8, 6, 4, 2]
      expect(merge_sort(a, 0, (a.length - 1))).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end
end
