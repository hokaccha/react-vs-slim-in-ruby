require 'erb'

class BenchmarkErb
  def initialize
    @r = ERB.new(File.read('templates/foo.erb'))
  end

  def run
    name = 'foo'
    items = [1,2,3]
    @r.result(binding)
  end
end

if __FILE__ == $0
  puts BenchmarkErb.new.run
end
