class NeweggScraper::CPU

    attr_accessor :name, :price, :frequency, :core_count, :url, :availability


    def initialize(name, price, frequency, core_count, url, availability)
        @name = name
        @price = price
        @frequency = frequency
        @core_count = core_count
        @url = url
        @availability = availability
    end

end