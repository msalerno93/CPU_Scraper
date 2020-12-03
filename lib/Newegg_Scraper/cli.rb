class NeweggScraper::CLI

    def call
        puts "Below is a list of all the new Ryzen CPUs from AMD!"
        puts "Which Ryzen CPU would you like to learn more about?"
        cpu_list
        interface
    end

    def cpu_list
        puts "1. AMD Ryzen 9 5950X"
        puts "2. AMD Ryzen 9 5900X"
        puts "3. AMD Ryzen 7 5800X"
        puts "4. AMD Ryzen 5 5600X"
    end

    def interface
        menu = "\nEnter 'list' to see the full list or enter another number"
        puts "Please select a number from the above list or type exit."
        while true
            
            input = gets.strip
            case input
            when "1"
                cpu = NeweggScraper::Scraper.get_cpu_info("1")
                puts description(cpu)
                puts menu
            # when "2"
            #     cpu = NeweggScraper::Scraper.get_cpu_info("2")
            #     puts description(cpu)
            #     puts menu
            # when "3"
            #     cpu = NeweggScraper::Scraper.get_cpu_info("3")
            #     puts description(cpu)
            #     puts menu
            # when "4"
            #     cpu = NeweggScraper::Scraper.get_cpu_info("4")
            #     puts description(cpu)
            #     puts menu
            when "exit"
                bye
                exit
            when "list"
                cpu_list
                puts "Please select a number from the above list or type exit."
            else
                puts "Incorrect command!"
                puts "Please select a number 1-4."
            end
        end
    end

    def description(thing)
        "Name: #{thing.name}\nPrice: #{thing.price}\nFrequency: #{thing.frequency}\nCore_Count: #{thing.core_count}\nAvailability: #{thing.availability}\nURL: #{thing.url}"
    end

    def bye
        puts "Thank you for using this application to learn about the new Ryzen CPUs! Come again soon!!"
    end
end