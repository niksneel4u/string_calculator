# frozen_string_literal: true

# simple string calculator
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?('//')
      delimiter = numbers[2]
      numbers = numbers[4..]
    end

    number_array = numbers.split(/#{delimiter}|\n|,/).map(&:to_i)

    negatives = number_array.select{ |n| n.negative? }
    
    if negatives.any?
      raise "Negative numbers not allowed: #{negatives.join(', ')}"
    end

    number_array.sum
  end
end
