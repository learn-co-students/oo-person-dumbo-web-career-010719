class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name, bank_account=25, happiness=8, hygiene=8 )
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def bank_account
    @bank_account
  end

  def hygiene
    @hygiene
  end

  def happiness
    @happiness
  end

  def bank_account=(amt)
    @bank_account += amt
  end

  def hygiene=(points)
    if points > 10
      @hygiene = 10
    elsif points < 0
      @hygiene = 0
    else
      @hygiene = points
    end
  end

  def happiness=(points)
    if points > 10
      @happiness = 10
    elsif points < 0
      @happiness = 0
    else
      @happiness = points
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def take_bath

    self.hygiene += 4

    if @hygiene > 10
      @hygiene = 10
    end

    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2

    if @hygiene < 0
      @hygiene = 0
    end

    if @happiness > 10
      @happiness = 10
    end

    return "♪ another one bites the dust ♫"
  end

  def call_friend(dude)
    dude.happiness += 3
    self.happiness += 3
    return "Hi #{dude.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(buddy, topic)
    if topic == "politics"
      buddy.happiness -= 2
      self.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      buddy.happiness += 1
      self.happiness += 1
      return "blah blah sun blah rain"
    else
      return 'blah blah blah blah blah'
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end
end

Luke = Person.new("Luke")
