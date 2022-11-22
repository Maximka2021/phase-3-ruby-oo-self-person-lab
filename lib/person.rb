require "pry"
class Person
    attr_reader :name, :happiness
    attr_accessor :bank_account, :hygiene
    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness= happy
        @happiness = happy.clamp(0, 10)
    end

    def hygiene= hygieneNum
        @hygiene = hygieneNum.clamp(0, 10)
    end

    def happy?
        happiness > 7 ? true : false
    end

    def clean?
        hygiene > 7 ? true : false
    end

    def get_paid amount
        @bank_account = amount + bank_account
        "all about the benjamins"
    end

    def take_bath 
        self.hygiene = hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = hygiene - 3
        self.happiness = happiness + 2
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        self.happiness = happiness + 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation friend, topic
        case topic
        when "politics"
             [friend, self].each { |person| person.happiness -= 2}
             'blah blah partisan blah lobbyist'
        when "weather"
            [friend, self].each { |person| person.happiness += 1}
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end

maxim = Person.new("Maxim")
#binding.pry