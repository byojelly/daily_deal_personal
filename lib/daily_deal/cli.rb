
#this is our cli controller - responsible for user interactions in the bin folder daily--deal
class DailyDeal::CLI

  def call
    list_deals
    menu
    goodbye
  end
  def list_deals
    puts "Today's Daily Deals:"
    #lets setup a heredoc which is essentially a very large string
    # the code '.gsub /^\s*/, ''' is only used to remove indentation in the final code (works without it but is inden)
#at a later time we commented out the code below
            #puts <<-DOC.gsub /^\s*/, ''
            #        1. this device
            #        2. that device
            #     DOC
    @deals = DailyDeal::Deal.today
    #lets enumerate over deals
    @deals.each.with_index(1) do |deal, i| #.with_index(1) is a trick to chain with_index(1) allows you to circumvent having to subtract one from the index of an array to yield its position ((arrays start at 0 this allows it to start at 1))
        puts "#{i}. #{deal.name} - #{deal.price} - #{deal.availability}"
    end

  end
  def menu
    input = nil
    while input != "exit"
          puts "Enter the number of the deal you would like more info or type list to see the deals again or type exit to exit:"
          input = gets.strip.downcase
          #lets put in a case below that allows us to perform an action given circumstances
          if input.to_i > 0#strings convert to 0 value with .to_i
                  the_deal = @deals[input.to_i-1] #this provides the array index of this deal and then puts the object
                  puts "#{the_deal.name} - #{the_deal.price} - #{the_deal.availability}"
            elsif
                  list_deals
            else
                  puts "Not sure what you want, type list or exit."
          end
              #below commented out is a different way of doing the above if statement
                    #  case input
                    #        when "1"
                    #            puts "More info on deal 1..."
                    #        when "2"
                    #            puts "More info on deal 2..."
                    #        when "list"
                    #            list_deals
                    #        else
                    #            puts "Not sure what you want, type list or exit."
                    #  end
    end
  end
  def goodbye
        puts "see you tomorrow for more deals"
  end



end


#     ./bin/daily-deal
