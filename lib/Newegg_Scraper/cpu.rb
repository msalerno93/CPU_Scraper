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
    
    # def self.all
    #     puts "1. AMD Ryzen 9 5950X"
    #     puts "2. AMD Ryzen 9 5900X"
    #     puts "3. AMD Ryzen 7 5800X"
    #     puts "4. AMD Ryzen 5 5600X"
    
    #     cpu_1 = self.new
    #     cpu_1.name = "AMD Ryzen 9 5950X"
    #     cpu_1.price = "$799.99"
    #     cpu_1.frequency = "3.4GHz"
    #     cpu_1.core_count = "16-Core/32-Thread"
    #     cpu_1.url = "https://www.newegg.com/amd-ryzen-9-5950x/p/N82E16819113663?&quicklink=true"
    #     cpu_1.availability = false

    #     cpu_2 = self.new
    #     cpu_2.name = "AMD Ryzen 9 5900X"
    #     cpu_2.price = "$549.99"
    #     cpu_2.frequency = "3.7GHz"
    #     cpu_2.core_count = "12-Core/24-Thread"
    #     cpu_2.url = "https://www.newegg.com/amd-ryzen-9-5900x/p/N82E16819113664?&quicklink=true"
    #     cpu_2.availability = false
    
    #     cpu_3 = self.new
    #     cpu_3.name = "AMD Ryzen 7 5800X"
    #     cpu_3.price = "$449.99"
    #     cpu_3.frequency = "3.8GHz"
    #     cpu_3.core_count = "8-Core/16-Thread"
    #     cpu_3.url = "https://www.newegg.com/amd-ryzen-7-5800x/p/N82E16819113665?&quicklink=true"
    #     cpu_3.availability = false

    #     cpu_4 = self.new
    #     cpu_4.name = "AMD Ryzen 5 5600X"
    #     cpu_4.price = "$299.99"
    #     cpu_4.frequency = "3.7GHz"
    #     cpu_4.core_count = "6-Core/12-Thread"
    #     cpu_4.url = "https://www.newegg.com/amd-ryzen-5-5600x/p/N82E16819113666?&quicklink=true"
    #     cpu_4.availability = false

    #     [cpu_1, cpu_2, cpu_3, cpu_4]
    # end

end