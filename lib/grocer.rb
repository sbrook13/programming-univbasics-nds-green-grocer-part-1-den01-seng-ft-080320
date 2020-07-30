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
  scanned_total = []
  i = 0
  # subtotal = []
  while i < cart.length do
    scanned_item = find_item_by_name_in_collection(cart[i][:item], scanned_total)
    if scanned_item
      scanned_item[:count] += 1
    else
      scanned_item = {
        :item => cart[i][:item],
        :price => cart[i][:price],
        :clearance => cart[i][:clearance],
        :count => 1
        }
        scanned_total << scanned_item
    end  
    i += 1
  end 
  scanned_total
end


  