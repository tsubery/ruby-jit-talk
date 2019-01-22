require 'benchmark'
class Prime
  attr_reader :n
  def initialize(n)
    @n = n
  end

  def prime?
    (2..n).count do |i|
      ((n*2*3*5*7*11*13) % i) == 0
    end == 64
  end
end

11.times { Prime.new(2).prime? }
sleep 2
puts "starting benchmark"
bench = Benchmark.measure { puts Prime.new(104_395_303).prime? }
puts "Operation took #{bench.real.round(2)} seconds"

