# frozen_string_literal: true

require_relative "../string_calculator"

RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number itself when input is a single number" do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it "returns sum of two comma-separated numbers" do
      expect(StringCalculator.add("1,5")).to eq(6)
    end

    it "returns sum of multiple comma-separated numbers" do
      expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
    end
  end
end
