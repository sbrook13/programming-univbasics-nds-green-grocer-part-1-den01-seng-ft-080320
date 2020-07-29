require 'pry'

def find_item_by_name_in_collection(name, collection)
  i = 0 
  while i < collection.length do
    if collection[i][:item] == name
      return collection[i]
    end 
    # binding.pry
    i += 1
  end 
end

def consolidate_cart(cart)
  i = 0
  # subtotal = []
  while i < cart.length do
    cart[i][:count] = 1 
    i += 1
  end 
  n=0 
  scanned_items = []
  while n < cart.length do
      if !scanned_items[:item] 
          scanned_items << cart[n]
      end
      if scanned_items[:item]
         scanned_items[:count] = scanned_items[:count + 1]
      end
    # subtotal << cart[i][:price]
    n += 1 
  end 
  return scanned_items
  # subtotal = subtotal.reduce(:+)
end


  