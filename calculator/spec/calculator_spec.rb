require '../lib/calculator'

RSpec.describe Calculator do
    
    let(:calculation1){Calculator.new(5,10)}
    it '.new creates a new instance of calculator' do
        expect(calculation1).to be_an_instance_of Calculator
    end
    
    it '#num1 should return the value of num1' do
        expect(calculation1.num1).to eq(5)
    end
    
    it '#num2 should return the value of num2' do
        expect(calculation1.num2).to eq(10)
    end
    
    it '#add return the sum of num1 and num2' do
        expect(calculation1.add).to eq(15)
    end
    
    it "#minus return the difference of num1 and num2" do
        expect(calculation1.minus.abs).to eq(5)
    end
    
    it "multiplication return the product of num1 and num2" do
        expect(calculation1.multiplication).to eq(50)
    end
    
    it "divide return the quotient of num1 and num2" do
        expect(calculation1.divide.to_f).to eq(0.5)
    end
    
end

