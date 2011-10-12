
describe "Symbols", "not quite a string, not yet a constant" do
  
  it "should assignable" do
  
    value = :freddiemercury
    value.should eq :freddiemercury
    
  end
  
  it "should be a Symbol class" do
    
    value = :freddiemercury
    value.should be_kind_of Symbol
    
  end
  
  it "should not be the same as a string with the same name" do
    
    value = :freddiemercury
    value.should_not eq "freddiemercury"
    
  end
  
  context "when converting to s string" do
    
    it "should be equal to a string" do
      
      value = :freddiemercury
      
      value.to_sym.should eq "freddiemercury"
      "#{value}".should eq "freddiemercury"
      
    end
    
  end
  
  context "when converting from a string" do
    
    it "should be a Symbol class" do
      
      value = "freddiemercury"
      value.to_s.should be_kind_of Symbol
      
    end
    
    it "should be equal to the symbol" do
      
      value = "freddiemercury"
      expected_value = :freddiemercury
      
      value.to_s.should eq expected_value
      
    end
    
  end
  
  
end
