require 'haml'

class BenchmarkHaml
  def initialize
    @r = Haml::Engine.new(File.read('templates/foo.haml'))
  end

  def run
    @r.render(self, name: "foo", items: [1,2,3])
  end
end

if __FILE__ == $0
  puts BenchmarkHaml.new.run
end
