# As a vendor
# I want customers to select products
# So that I can give them an incentive to put money in the machine



class Vendor

  def initialize 
    @sum = 0
    @return = []
  end 

  def display
   if @sum == 0
     "INSERT COIN"
   else
     "total: #{@sum}c"
   end

  end

  def collect(money)
    if money == 10 || money == 5 || money == 25
      @sum += money 
    else
      @return << money
    end
    @sum
  end

  def coin_return 
    @return 
  end


end
