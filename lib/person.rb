# your code goes here
class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @balance = 25
    @happiness = 8
    @hygiene = 8
  end

  #setter
  def bank_account
    @balance
  end

  #setter
  def happiness=(index)
    @happiness = index
    # if index > 10
    #   @happiness = 10
    # end
    #
    # if index < 0
    #   @happiness = 0
    # end
    @happiness = 10 if index > 10
    @happiness = 0 if index < 0
  end

  #setter
  def hygiene=(index)
    @hygiene = index
    @hygiene = 10 if index > 10
    @hygiene = 0 if index < 0
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @balance += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    #makes the person calling happier by 3
    self.happiness += 3
    #makes the person recieving the call happier by 3
    person.happiness += 3
    "Hi #{person.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    objects = [self, person]

    if topic == "politics"
      objects.each {|x| x.happiness -= 2}
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      objects.each { |x| x.happiness += 1}
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end

end
