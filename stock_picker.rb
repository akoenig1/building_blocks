def stock_picker stocks
    min_price = stocks[0]
    max_diff = 0
    best_buy_day = 0
    best_sell_day = 0
    stocks.each { |buy_price| 
        if buy_price < min_price
            min_price = buy_price
            stocks.each { |sell_price| 
                diff = sell_price - buy_price
                if (diff > max_diff) && (stocks.index(buy_price) < stocks.index(sell_price))
                    max_diff = diff
                    best_buy_day = stocks.index(buy_price)
                    best_sell_day = stocks.index(sell_price)
                end
            }
        end
    }
    [best_buy_day, best_sell_day]
end

puts stock_picker([17,3,6,9,15,8,6,1,10,21])