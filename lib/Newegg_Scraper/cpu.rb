class NeweggScraper::CPU

    attr_accessor :name, :price, :frequency, :core_count, :url, :availability

    @@all = []

    def initialize(name, price, frequency, core_count, url, availability)
        @name = name
        @price = price
        @frequency = frequency
        @core_count = core_count
        @url = url
        @availability = availability
        @@all << self
    end

    def self.all
        @@all
    end


    def self.cpu_objects(info)
        self.all.find {|cpu| cpu.name == info}
    end

end