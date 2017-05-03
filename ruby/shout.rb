module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!!!!" + " :)"
  end
end


# Driver Code

Shout.yell_angrily("Darn it")
Shout.yelling_happily("Yay")