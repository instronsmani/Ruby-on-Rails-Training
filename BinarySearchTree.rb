class BinarySearchTree
    def unsorted_input
        puts "Enter no of inputs"
        i = gets.chomp.to_i
        $arr = []
        while i>0
          num = gets.chomp.to_i
          $arr.push(num)
          i = i-1
        end
        puts "unsorted array input is #{$arr}"
    end
    def sorting
        for i in 0...$arr.length
            for j in 0...$arr.length
                if $arr[i] < $arr[j]
                    temp = $arr[i]
                    $arr[i] = $arr[j]
                    $arr[j] = temp
                end
            end
        end
        print "sorted array input is : #{$arr}\n"
    end
    def binarySearch(value)
        upper = $arr.length - 1
        lower = 0
        middle = -1
        while(true)
            if upper < lower
                return -1
            end
            middle = lower + (upper - lower)/2
            if($arr[middle] < value)
                lower = middle + 1
            elsif ($arr[middle] > value)
                upper = middle -1
            elsif ($arr[middle] == value)
                return middle
            end
        end
        return -1
    end
end

test1=BinarySearchTree.new
test1.unsorted_input
test1.sorting
puts "Enter the number to be search : "
x=gets.chomp.to_i
index_pos = test1.binarySearch(x)
print "the value #{$arr[index_pos]} is present at the index #{index_pos}\n"
