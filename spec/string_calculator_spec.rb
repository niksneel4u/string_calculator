require 'spec_helper'
require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = StringCalculator.new
      expect(calculator.add('')).to eq(0)
    end

    it 'returns the number itself when only one number is provided' do
      calculator = StringCalculator.new
      expect(calculator.add('1')).to eq(1)
      expect(calculator.add('5')).to eq(5)
    end

    it 'returns the sum of two numbers separated by a comma' do
      calculator = StringCalculator.new
      expect(calculator.add('1,2')).to eq(3)
      expect(calculator.add('10,20')).to eq(30)
    end

    it 'returns the sum of multiple numbers separated by commas' do
      calculator = StringCalculator.new
      expect(calculator.add('1,2,3')).to eq(6)
      expect(calculator.add('5,5,5,5')).to eq(20)
      expect(calculator.add('10,20,30,40,50')).to eq(150)
    end
  end
end
