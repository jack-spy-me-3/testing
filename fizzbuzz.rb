require 'rspec'

class Fizzbuzz

  def output(number)
    1
  end

  def go
    (1..100).each do |number|
      puts output(number)
    end
  end

end

RSpec.describe Fizzbuzz do 
  describe '#output' do
    it "should return 1 if the input number is 1" do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(1)).to eq 1
    end

    it "should return 2 if the input number is 2" do
      fizzbuzz = Fizzbuzz.new
    end
  end
  
end