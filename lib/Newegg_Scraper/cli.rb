class NeweggScraper::CLI

    def call
        puts "Below is a list of all the new Ryzen CPUs from AMD!"
        puts "Which Ryzen CPU would you like to learn more about?"
        # cpu_list
        interface
    end

    def cpu_list
        @cpu = NeweggScraper::CPU.all
    end

    def interface
        while true
            puts "Please select a number from the above list or type exit."
            input = gets.strip
            case input
            when "1"
                ryzen_9 = NeweggScraper::Scraper.get_cpu_info("1")
                description(ryzen_9)
            when "2"
                puts "More info 2"
            when "3"
                puts "More info 3"
            when "4"
                puts "More info 4"
            when "exit"
                bye
                break
            when "list"
                cpu_list
            else
                puts "Incorrect command!"
            end
        end
    end

    # def description(cpu)
    #     "Name: #{cpu.name}

    #     "

    def bye
        puts "Thank you for using this application to learn about the new Ryzen CPUs! Come again soon!!"
    end
end