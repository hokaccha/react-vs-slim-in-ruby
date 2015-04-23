require "benchmark/ips"
require_relative "haml"
require_relative "slim"
require_relative "react"

Benchmark.ips do |x|
  haml = BenchmarkHaml.new
  slim = BenchmarkSlim.new
  react = BenchmarkReact.new

  x.report('haml')  { haml.run }
  x.report('slim')  { slim.run }
  x.report('react') { react.run }

  x.compare!
end
