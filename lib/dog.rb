require 'pry'

class Dog

    @@all = []

    attr_reader :name

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        self.save
    end

    def self.print_all
        self.all.each {|dog| puts dog.name}
    end

    def save
        self.class.all << self
    end

    def self.clear_all
        self.all.clear
    end


end
