require 'slim'

class BenchmarkSlim
  def initialize
    @r = Slim::Template.new('templates/foo.slim')
  end

  def run
    @r.render(self, name: "foo", items: [1,2,3])
  end
end

if __FILE__ == $0
  puts BenchmarkSlim.new.run
end
