
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
    puts <<-DOC.gsub /^\s*/, ''
            1. this device
            2. that device
         DOC
  end
  def menu
    input = nil
    while input != "exit"
          puts "Enter the number of the deal you would like more info or type list to see the deals again or type exit to exit:"
          input = gets.strip.downcase
          #lets put in a case below that allows us to perform an action given circumstances
          case input
                when "1"
                    puts "More info on deal 1..."
                when "2"
                    puts "More info on deal 2..."
                when "list"
                    list_deals
                else
                    puts "Not sure what you want, type list or exit."
          end
    end
  end
  def goodbye
        puts "see you tomorrow for more deals"
  end



end


#     ./bin/daily-deal
