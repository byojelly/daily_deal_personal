class DailyDeal::Deal

attr_accessor :name, :price, :availability, :url
# Class method
  def self.today
    # i should return a bunch of deals
    self.scrape_deals
#we now comment out the below and then copy the reuire code in console and copy that to daily-deal under bin
    #puts <<-DOC.gsub /^\s*/, ''
    #        3. this device
    #        4. that device
    #     DOC

#now scrape meh and woot and return deals
    #deal_1 = self.new
    #deal_1.name = "PCH Digital Pulse Manager"
    #deal_1.price = "$27"
    #deal_1.availability = true
    #deal_1.url = "https://meh.com/"

    #deal_2 = self.new
    #deal_2.name = "Lenovo"
    #deal_2.price = "$557"
    #deal_2.availability = true
    #deal_2.url = "https://www.woot.com/"

    #[deal_1, deal_2]
  end
  def self.scrape_deals
    deals = []
    #go to woot
    #extract the properties
    # instantiate a deal
    deals
  end


end


#     ./bin/daily-deal
