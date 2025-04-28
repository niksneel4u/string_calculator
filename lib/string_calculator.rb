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

    negatives = number_array.select(&:negative?)

    raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

    number_array.sum
  end
end
