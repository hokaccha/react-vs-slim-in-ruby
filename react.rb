require 'v8'
require 'oj'

class ReactRenderer
  def initialize
    react_source = File.read("./node_modules/react/dist/react.min.js")

    @ctx = V8::Context.new
    @ctx.eval """
      var global = {};
    """
    @ctx.eval react_source
    @ctx.eval """
      var React = global.React;
    """
  end

  def register name, template
    template.sub! "module.exports", "var #{name}"
    @ctx.eval template
  end

  def render name, props
    @ctx.eval """
      React.renderToString(#{name}(#{Oj.dump(props, :mode => :compat)}))
    """
  end
end

class BenchmarkReact
  def initialize
    @r = ReactRenderer.new
    @r.register "foo", File.read('templates/foo.js')
  end

  def run
    @r.render("foo", {name: "Hoge", items: [1, 3, 4]})
  end
end

if __FILE__ == $0
  puts BenchmarkReact.new.run
end
