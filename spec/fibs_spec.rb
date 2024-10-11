# frozen_string_literal: true
require_relative '../lib/fibs'

describe "Fibonacci functions" do
  describe "fib" do
    it "handles zero input" do  
      expect(fib(0)).to eq([])
    end

    it "handles nonzero input" do
      expect(fib(8)).to eq([0, 1, 1, 2, 3, 5, 8, 13])
    end
  end

  describe "fib_rec" do
    it "handles zero input" do  
      expect(fib_rec(0)).to eq([])
    end

    it "handles nonzero input" do
      expect(fib_rec(8)).to eq([0, 1, 1, 2, 3, 5, 8, 13])
    end
  end

end
