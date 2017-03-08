require 'rspec'

class ChangeMachine

  def change(money)
    coins = []
    denominations = [25, 10, 5, 1]
    denominations.each do |denomination|
      while money >= denomination
        coins << denomination
        money -= denomination
      end
    end
    return coins
  end
end


RSpec.describe ChangeMachine do
  describe '#change' do
    it "should return [1] if you input 1" do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end

    it "should return [1,1] if you input 2" do
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq([1, 1])
    end

    it "should return [5] if you input 5" do
      machine = ChangeMachine.new
      expect(machine.change(5)).to eq([5])
    end

    it "should return [5, 1] if you input 6" do
      machine = ChangeMachine.new
      expect(machine.change(6)).to eq([5, 1])
    end

    it "should return [5, 1, 1] if you input 7" do
      machine = ChangeMachine.new
      expect(machine.change(7)).to eq([5, 1, 1])
    end

    it "should return [10] if you input 10" do
      machine = ChangeMachine.new
      expect(machine.change(10)).to eq([10])
    end

    it "should return [10, 5, 1] if you input 16" do
      machine = ChangeMachine.new
      expect(machine.change(16)).to eq([10, 5, 1])
    end

    it "should return [25] if you input 25" do
      machine = ChangeMachine.new
      expect(machine.change(25)).to eq([25])
    end

    it "should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] if you input 119" do
      machine = ChangeMachine.new
      expect(machine.change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end