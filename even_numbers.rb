# 6. Implement question #5 again in Ruby in two ways:
#     a. Using a loop
#     b. Using recursion
#    Benchmark the two solutions (include your code for the benchmarking). Which one of your solutions is faster?

# Answer:

# The recursive solution is almost 10 times faster.

# ~/CodeCore/Bootcamp/quiz_1 $ ruby even_numbers.rb
#        user     system      total        real
#    0.790000   0.010000   0.800000 (  0.794395)
#    0.080000   0.000000   0.080000 (  0.087757)
# ~/CodeCore/Bootcamp/quiz_1 $ ruby even_numbers.rb
#        user     system      total        real
#    0.800000   0.010000   0.810000 (  0.805489)
#    0.080000   0.000000   0.080000 (  0.083635)
# ~/CodeCore/Bootcamp/quiz_1 $ ruby even_numbers.rb
#        user     system      total        real
#    0.790000   0.010000   0.800000 (  0.798482)
#    0.080000   0.000000   0.080000 (  0.087328)




require "benchmark"

def even_loop(n)

  even_numbers = []
  i = 2

  while (even_numbers.length < n)
    even_numbers << i
    i += 2
  end

  print (even_numbers.join(", "))
  puts ""

end

even_loop(6)
even_loop(7)
even_loop(8)
even_loop(9)
even_loop(1)
even_loop(0)

def even_recursive(array, n)

  if array.size == n
    print (array.join(", "))
    puts ""
  elsif array.size == 0
    array << 2
  else
    array << (array[-1] + 2)
    even_recursive(array, n)
  end


end

even_numbers = []

even_recursive(even_numbers, 6)
even_recursive(even_numbers, 7)
even_recursive(even_numbers, 8)
even_recursive(even_numbers, 9)


n = 1_000_000
Benchmark.bm do |x|
  x.report { n.times { even_loop(10) } }
  x.report { n.times { even_recursive(even_numbers, 10) } }
end
