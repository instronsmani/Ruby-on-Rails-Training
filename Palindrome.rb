class Palindrome
    def input
        print "Enter a string : "
        $name=gets.chomp
    end
    
    def checkingMethod
        if $name.eql? $name.reverse
            puts "True"
        else
            puts "False"
        end
    end
end

test1=Palindrome.new
test1.input
test1.checkingMethod
