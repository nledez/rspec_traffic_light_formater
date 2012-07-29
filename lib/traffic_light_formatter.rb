require 'rspec/core/formatters/progress_formatter'
require 'net/http'

class TrafficLightFormatter < RSpec::Core::Formatters::ProgressFormatter
  def initialize(output)
    super
    setColor "2"
  end

  def setColor(colors)
    Net::HTTP.get(URI('http://localhost:4567/set-color/' + colors))
  end

  def dump_summary(duration, example_count, failure_count, pending_count)
    unless failure_count > 0
      setColor "1"
    else
      setColor "4"
    end
    super
  end
end
