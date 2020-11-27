class NeweggScraper::CLI

    def call
        puts "Below is a list of all the new Ryzen CPUs from AMD!"
        puts "Which Ryzen CPU would you like to learn more about?"
        cpu_list
        interface
    end

    def cpu_list
        @cpu = NeweggScraper::CPU.all
    end

    def interface
        input = nil
        while input != "exit"
            puts "Please select a number from the above list or type exit."
            input = gets.strip
            case input
            when "1"
                puts "More info 1"
            when "2"
                puts "More info 2"
            when "3"
                puts "More info 3"
            when "4"
                puts "More info 4"
            when "exit"
                bye
            when "list"
                cpu_list
            else
                puts "Incorrect command!"
            end
        end
    end

    def bye
        puts "Thank you for using this application to learn about the new Ryzen CPUs! Come again soon!!"
    end
end