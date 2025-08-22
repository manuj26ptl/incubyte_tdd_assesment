# frozen_string_literal: true

class StringCalculator
  DEFAULT_DELIMITER = /,|\n/

  def self.add(numbers)
    return 0 if numbers == ""

    delimiter, body = parse_delimiter_and_body(numbers)

    tokens = body.split(delimiter).map!(&:to_i)
    
    negatives = tokens.select(&:negative?)
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    tokens.sum
  end

  def self.parse_delimiter_and_body(input)
    if input.start_with?("//")
      header, body = input.split("\n", 2)
      raw = header[2..] # everything after //
      [Regexp.new(Regexp.escape(raw)), body]
    else
      [DEFAULT_DELIMITER, input]
    end
  end
  private_class_method :parse_delimiter_and_body
end
