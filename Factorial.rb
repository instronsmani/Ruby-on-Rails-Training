class Factorial
    def input
        print "Enter a number : "
        $num=gets.chomp.to_i
    end
    def factorialCalculation
        @@fact=1
        if $num < 0
            puts "Factorial is not possible"
        elsif $num == 0
            puts "Factorial of #{$num} is 0"
        else
            for i in 1...$num+1
                @@fact=@@fact*i
            end
            puts "The factorial of #{$num} is #{@@fact}"
        end
    end
end

test1=Factorial.new
test1.input
test1.factorialCalculation
