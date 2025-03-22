def stock_picker(prices)
#takes in an array of stock prices, one for each hypothetical day. 
#it should return a pair of days representing the best day to buy and the best day to sell. 
#days start at 0.

  result = [0, 0]
  profit = 0

  prices.each_with_index do |buy, day|
    prices.each_with_index do |sell, out|
      #compares each price with the remaining ones, then assigns the best days for buying and selling.
      #ignores past days
      if sell - buy > profit && day < out
        profit = sell - buy
        result[0] = day
        result[1] = out
      end
    end

  end
  return result
end

p stock_picker([17,3,6,9,15,8,6,1,10])