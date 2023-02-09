def stock_picker(arr)
    buy_sell = [0,0]
    arr.each do |price|
        buy_index = arr.index(price)
        sell_index = arr.index(arr[buy_index..-1].sort.last)
        if arr[sell_index] - arr[buy_index] > arr[buy_sell[1]] - arr[buy_sell[0]]
            buy_sell[0] = buy_index
            buy_sell[1] = sell_index
        end
    end
    buy_sell 
end

