def type()
  puts "Called type function."
    type = ["Regular (4.99, 8.99, 12.99)", "Superstar (8.99, 13.99, 18.99)"]
end

def size()
    size = ["10 inch", "14 inch", "18 inch"]
end

def regular_price()
    regular_price = [4.99, 8.99, 12.99]
end

def superstar_price()
    superstar_price = [8.99, 13.99, 18.99]
end

def crust()
    crust = ["Regular", "Thin", "Pan", "Stuffed"]
end

def toppings1()
    toppings1 = ["Double cheese", "Pepperoni", "Sausage", "Bacon", "Ham", "Onions", "Green peppers", "Banana peppers", "Mushrooms"]
end

def pizza(pizzasize, pizzatype, pizzatoppings)
      pizzasubtotal = 0
    if pizzasize == "10_inch" && pizzatype == "regular"
      pizzasubtotal += 4.99
    elsif pizzasize == "14_inch" && pizzatype == "regular"
      pizzasubtotal += 8.99
    elsif pizzasize == "18_inch" && pizzatype == "regular"
      pizzasubtotal += 12.99
    elsif pizzasize == "10_inch" && pizzatype == "superstar"
      pizzasubtotal += 8.99
    elsif pizzasize == "14_inch" && pizzatype == "superstar"
      pizzasubtotal += 13.99
    elsif pizzasize == "18_inch" && pizzatype == "superstar"
      pizzasubtotal += 18.99
    end
p pizzasize
p pizzasubtotal
    # counter = 0
    # toppings.each { |x| toppings1().each { |y|
    #               if x == y
    #                 counter += 1
    #               end
    #             }
    # }
    # p counter
    unless pizzatoppings == nil
      pizzasubtotal += pizzatoppings.count.to_f * 1.49
      p pizzasubtotal
    end
      pizzasubtotal
  end

  def self.round_down(x, n=2)
    s = x.to_s
    l = s.index('.') ? s.index('.') + 1 + n : s.length
    s = s[0, l]
    s =  s.index('.') ? s.length - (s.index('.') + 1) == 1 ? s << '0' : s : s << '.00'
    s.to_f
  end
