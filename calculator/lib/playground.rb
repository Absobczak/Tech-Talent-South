RSpec.describe "#hola" do
    it 'greets a person with their name' do
        expect(hola('Andre')).to eql('Buenos dias Andre')
    end    
end

def hola(name)
   
    "Buenos dias #{name}"
    
end



