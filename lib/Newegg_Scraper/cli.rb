class NeweggScraper::CLI

    def call
        puts "Below is a list of all the new Ryzen CPUs from AMD!"
        puts "Which Ryzen CPU would you like to learn more about?"
        cpu_list
        interface
    end

    def cpu_list
        cpu_names.each.with_index(1) {|cpu, i| puts "#{i}. #{cpu}"}
    end

    def menu
        puts "Enter 'list' to see the full list or enter another number"
    end

    def interface
        puts "Please select a number from the above list or type exit."
        while true
            input = gets.strip
            case input
            when "1", "2", "3", "4"
                info = cpu_names[input.to_i - 1]
                if !NeweggScraper::CPU.cpu_objects(info)
                cpu_method(input)
                end
                cpu_information = NeweggScraper::CPU.cpu_objects(info)
                description(cpu_information)
                menu
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
        puts "Name: #{thing.name}\nPrice: #{thing.price}\nFrequency: #{thing.frequency}\nCore_Count: #{thing.core_count}\nAvailability: #{thing.availability}\nURL: #{thing.url}"
    end

    def bye
        puts "Thank you for using this application to learn about the new Ryzen CPUs! Come again soon!!"
    end

    def cpu_method(userInput)
        cpu = NeweggScraper::Scraper.get_cpu_info(userInput)
    end

    def cpu_names
        names = ["Ryzen 9 5950X", "Ryzen 9 5900X", "Ryzen 7 5800X", "Ryzen 5 5600X"]
    end
end