class DailyDeal::Deal

# Class method
  def self.today
    # i should return a bunch of deals
    puts <<-DOC.gsub /^\s*/, ''
            3. this device
            4. that device
         DOC
  end

end


#     ./bin/daily-deal
