# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!!!!" + " :)"
#   end
# end


# # Driver Code

# Shout.yell_angrily("Darn it")
# Shout.yelling_happily("Yay")

#________________________


module Shout
  def yell(words)
    puts words + "!!!" 
  end
end

class Austin_Powers
  include Shout
end

class Agent_Kensington
  include Shout
end

# Driver Code

powers = Austin_Powers.new
powers.yell("Yeah, baby, yeah")

kensington = Agent_Kensington.new
kensington.yell("Oh, behave")
