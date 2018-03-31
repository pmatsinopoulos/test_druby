require 'drb/drb'

DRb.start_service
queue = DRbObject.new_with_uri('druby://localhost:9999')

loop do
  data = queue.pop
  puts "Processing #{data}"
end
