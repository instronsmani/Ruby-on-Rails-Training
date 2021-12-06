class Prime
    def inputMethod
        print "Enter a number : "
        $num=gets.chomp.to_i
    end
    
    def primeCheck
        $flag=0
        for i in 2...$num/2
            if $num%i == 0
                $flag=1
                break
            end
        end
        if $num == 1
            print "1 is neither prime nor composite."
        else
            if $flag == 0
                print "#{$num} is a prime number."
            else
                print "#{$num} is not a prime number."
            end
        end
    end
end

test1=Prime.new
test1.inputMethod
test1.primeCheck
