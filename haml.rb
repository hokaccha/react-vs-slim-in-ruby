require 'haml'
require "time"

r = Haml::Engine.new(File.read('templates/foo.haml'))

# benchmark
start = Time.now.to_f
100000.times do
  r.render(self, name: "foo", items: [1,2,3])
end
p Time.now.to_f - start
