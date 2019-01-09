# your code goes here
class Person
  attr_reader :name, :bank_account, :happiness, :hygiene

  def initialize(name, happiness = 8)
    @name = name
    @bank_account = 25
    @happiness = happiness
    @hygiene = 8
  end

  def bank_account=(amount)
    @bank_account += amount
  end

  def happiness=(happiness)
    if happiness > 10
      @happiness = 10
    elsif happiness < 0
      @happiness = 0
    else
      @happiness = happiness
    end
  end

  def hygiene=(hygiene)
    if hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    else
      @hygiene = hygiene
    end
  end

  def happy?
    @happiness > 7 ? true :false
  end

  def clean?
    @hygiene > 7 ? true :false
  end

  def get_paid(salary)
    self.bank_account = salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness += 1
      self.happiness += 1
      'blah blah sun blah rain'
    else
      "blah blah blah blah blah"
    end
  end
end
