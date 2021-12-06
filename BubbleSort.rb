class BubbleSort
    def unsorted_input
        puts "Enter no of inputs"
        i = gets.chomp.to_i
        $arr = []
        while i>0
          num = gets.chomp.to_i
          $arr.push(num)
          i = i-1
        end
        puts "unsorted array is #{$arr}"
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
        print "sorted array : #{$arr}\n"
    end
end

test1=BubbleSort.new
test1.unsorted_input
test1.sorting
