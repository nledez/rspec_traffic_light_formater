require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('rspec_traffic_light_formater', '0.1.0') do |p|
  p.description    = "Use a traffic light with an Arduino to show rspec status."
  p.url            = "https://github.com/nledez/rspec_traffic_light_formater"
  p.author         = "Nicolas Ledez"
  p.email          = "rubygems@ledez.net"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
  p.runtime_dependencies = [ "traffic_light" ]
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
