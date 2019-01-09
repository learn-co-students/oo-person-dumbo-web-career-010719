class Person
    attr_accessor :bank_account
  
    def initialize(name)
        @name=name
        @bank_account=25
        @happiness_points=8
        @hygiene_points=8
    end
  
    def name
        @name
    end
  
    def happiness=(points)
            @happiness_points = points
            if @happiness_points > 10
              @happiness_points = 10
            elsif @happiness_points < 0
              @happiness_points = 0
            end
  
    end
  
    def happiness
        @happiness_points
    end
  
    def hygiene=(points)
      @hygiene_points = points
      if @hygiene_points > 10
        @hygiene_points = 10
      elsif @hygiene_points < 0
        @hygiene_points = 0
      end
  
    end
  
    def hygiene
        @hygiene_points
    end
  
    def clean?
        @hygiene_points > 7? true:false
    end
  
    def happy?
        @happiness_points > 7? true:false
    end
  
    def get_paid(num)
        self.bank_account+=num
        "all about the benjamins"
    end
  
    def take_bath
            self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
    def work_out
            self.happiness+= 2
            self.hygiene-=3
        return "♪ another one bites the dust ♫"
    end
  
    def call_friend(person)
        self.happiness+=3
        person.happiness+=3
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end
  
    def start_conversation(person, topic)
            if topic.downcase == "politics"
                    self.happiness-=2
                    person.happiness-=2
                    return "blah blah partisan blah lobbyist"
           elsif topic.downcase == "weather"
                self.happiness+=1
                person.happiness+=1
                return  "blah blah sun blah rain"
           else
           return "blah blah blah blah blah"
        end
    end
  end