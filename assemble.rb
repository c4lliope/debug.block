require "json"

class Assemble
  def self.current_run
    Struct.
      new(:block_name, :input).
      new(
        ENV.fetch("ASSEMBLE_BLOCK_NAME"),
        JSON.parse(File.read("input.json")),
      )
  end
end
