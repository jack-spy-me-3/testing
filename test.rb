require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def decimal_to_percent(decimal)
    return "#{(decimal * 100).to_i}%"
  end
end

# calculator = Calculator.new

# puts "Testing the add method..."
# if calculator.add(1,2) == 3
#   puts "Test passed!"
# else
#   puts "FAIL. YOU ARE A FAILURE!!!"
# end

RSpec.describe Calculator do
  describe '#add' do
    it "should return the sum of two input numbers" do
      calculator = Calculator.new
      expect(calculator.add(1,2)).to eq(3)
    end
  end

  describe '#subtract' do
    it "should subtract the second number from the first number" do
      calculator = Calculator.new
      expect(calculator.subtract(4,2)).to eq(2)
    end

    it "should not subtract the first number from the second" do
      calculator = Calculator.new
      expect(calculator.subtract(4,2)).to_not eq(-2)
    end
  end

  describe '#multiply' do
    it "should return the product of two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(3,2)).to eql(6)
    end
  end

  describe '#divide' do
    it "should return the quotient of two numbers" do
      calculator = Calculator.new
      expect(calculator.divide(6,2)).to eql(3)
    end

    it "should not return the quotient of two numbers when the second number is divided by the first number" do
      calculator = Calculator.new
      expect(calculator.divide(2,6)).to_not eql(3)
    end
  end

  describe '#square' do
    it "should return the square of a number" do
      calculator = Calculator.new
      expect(calculator.square(2)).to eql(4)
    end
  end  

  describe '#power' do
    it "should return the power of one number when the second is an exponent" do
      calculator = Calculator.new
      expect(calculator.power(2,3)).to eql(8)
    end
  end

  describe '#decimal_to_percent' do
    it "should take in a decimal and return the percentage" do
      calculator = Calculator.new
      expect(calculator.decimal_to_percent(0.1)).to eq("10%")
    end
  end
end