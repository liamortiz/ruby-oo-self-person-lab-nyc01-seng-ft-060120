require 'pry'

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
    "all about the benjamins"
  end
  
  def take_bath
    self.hygiene=(@hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    self.hygiene=(@hygiene - 3)
    self.happiness=(@happiness + 2)
    "♪ another one bites the dust ♫"
  end
  
  def call_friend(person)
    person.happiness=(person.happiness + 3)
    "Hi Felix! It's Stella. How are you?"
  end
  
end