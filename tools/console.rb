require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end





# Put your variables here~!

l1 = Listing.new('l1')
l2 = Listing.new('l2')
l3 = Listing.new('l3')

g1 = Guest.new("g1")
g2 = Guest.new('g2')
g3 = Guest.new('g3')

t1 = Trip.new(g1, l1, 10)
t2 = Trip.new(g2, l2, 20)
t3 = Trip.new(g3, l3, 30)


binding.pry
