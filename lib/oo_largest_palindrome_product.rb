# Implement your object-oriented solution here!
class LargestPalindromeProduct
    attr_accessor :answer
    
    def initialize
        @answer = find_biggest_palindrome_product
    end

    def find_biggest_palindrome_product
        i = 999
        j = 999
        pali = 0
    
        while i > 99
            while j > 99
                if j*i < pali
                    break
                end
        
                if (j*i).to_s == (j*i).to_s.reverse
                    pali = j*i
                end
                j -= 1
            end
            i -= 1
            j = i
        end
    
        pali
    end
end