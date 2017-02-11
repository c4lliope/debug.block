require "./assemble"

run = Assemble.current_run
block_name = run.block_name
input = run.input

puts "We're up and running with block '#{block_name}'"

puts "Received input:"
p input
