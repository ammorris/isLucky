# Ticket numbers usually consist of an even number of digits. A ticket number is considered lucky if the sum of the first half of the digits is equal to the sum of the second half.

# Given a ticket number n, determine if it's lucky or not.

# Example

# For n = 1230, the output should be
# isLucky(n) = true;
# For n = 239017, the output should be
# isLucky(n) = false.

def isLucky(n)
    n = n.to_s.split('').map(&:to_i)
    n.shift(n.size/2).reduce(:+) == n.reduce(:+)
end

# def isLucky(n)
#     n = n.to_s.each_char.map { |x| x.to_i }
#     left, right = n.each_slice( (n.size/2.0).round ).to_a
#     left.reduce(:+) == right.reduce(:+)
# end