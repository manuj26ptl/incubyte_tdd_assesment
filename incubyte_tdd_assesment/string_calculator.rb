# frozen_string_literal: true

class StringCalculator

  def self.add(numbers)
    return 0 if numbers == ""
    return numbers.to_i if numbers.match?(/^\d+$/)

    nil
  end
end
