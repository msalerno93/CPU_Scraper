class NeweggScraper::Scraper

    @base_link = "https://www.newegg.com/"

    def self.get_cpu_info(num)
        case num
        when "1"
            link = @base_link + "amd-ryzen-9-5950x/p/N82E16819113663?&quicklink=true"
        when "2"
            link = @base_link + "amd-ryzen-9-5900x/p/N82E16819113664?&quicklink=true"
        when "3"
            link = @base_link + "amd-ryzen-7-5800x/p/N82E16819113665?&quicklink=true"
        when "4"
            link = @base_link + "amd-ryzen-5-5600x/p/N82E16819113666?&quicklink=true"
        end
        doc = Nokogiri::HTML(open(link))
        binding.pry
    end

end