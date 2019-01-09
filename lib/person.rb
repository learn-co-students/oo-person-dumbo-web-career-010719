require 'pry'

class Person
  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def name
    @name
  end

  def bank_account
    @bank_account
  end

  def bank_account=(bank_account)
    @bank_account = bank_account
  end

  def happiness
    @happiness
  end

  def happiness=(happiness)
    @happiness = happiness
    if @happiness > 10
        @happiness = 10
      elsif @happiness < 0
        @happiness = 0
      else @happiness
    end
  end

  def hygiene
    @hygiene
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    if @hygiene > 10
        @hygiene = 10
    elsif @hygiene < 0
        @hygiene = 0
    end
  end

  def happy?
    if @happiness > 7
      true
    else false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    self.hygiene=(@hygiene)
    return '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    @happiness += 2
    @hygiene -= 3
    self.happiness=(@happiness)
    self.hygiene=(@hygiene)
    return '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
    @happiness += 3

    friend.happiness += 3
    #friend.happiness=(friend.happiness + 3)
    self.happiness=(@happiness)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
    #friend.happiness=(happiness)
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      friend.happiness=(friend.happiness - 2)
      self.happiness=(self.happiness - 2)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      friend.happiness=(friend.happiness + 1)
      self.happiness=(self.happiness + 1)
      "blah blah sun blah rain"
    else "blah blah blah blah blah" 
    end
  end
end



person = Person.new("John",3,4,6)
