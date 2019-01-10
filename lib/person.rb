class Person
  attr_reader :name

  def initialize(name, balance=25, points=8, smell=8)
    @name = name
    @balance = balance
    @points = points
    @smell = smell
  end

  def bank_account
    @balance
  end

  def bank_account=(balance)
    @balance = balance
  end

  def happiness
    @points
  end

  def happiness=(num)
    if num >= 11
      @points = 10
    elsif num < 0
      @points = 0
    else
      @points = num
    end
  end

  def hygiene
    @smell
  end

  def hygiene=(num)
    if num >= 11
      @smell = 10
    elsif num < 0
      @smell = 0
    else
      @smell = num
    end
  end

  def happy?
    if @points > 7
      true
    else
      false
    end
  end

  def clean?
    if @smell > 7
      true
    else
      false
    end
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
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
