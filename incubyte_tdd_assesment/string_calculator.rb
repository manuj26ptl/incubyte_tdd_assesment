# frozen_string_literal: true

class StringCalculator
  
  DEFAULT_DELIMITER = /,|\n/

  def self.add(numbers)
    return 0 if numbers == ""

    tokens = numbers.split(DEFAULT_DELIMITER)
    tokens.map!(&:to_i)
    tokens.sum
  end
end
