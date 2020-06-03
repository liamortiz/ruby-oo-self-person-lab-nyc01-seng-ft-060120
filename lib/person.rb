class Person
    
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  def happiness=(happiness)
    @happiness = happiness
    if @happiness > 10 then @happiness = 10 end
    if @happiness < 0 then @happiness = 0 end
  end
  
  def hygiene=(hygiene)
    @hygiene = hygiene
    if @hygiene > 10 then @hygiene = 10 end
    if @hygiene < 0 then @hygiene = 0 end
  end
  
  def happy?
    @happiness > 7
  end
  def clean?
    @hygiene > 7
  end
  
  def get_paid(salary)
    @bank_account += salary
    "All "
  end
  
end