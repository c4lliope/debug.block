require "json"

class Assemble
  def self.current_run
    Struct.
      new(:block_name, :input).
      new(
        ENV.fetch("ASSEMBLE_BLOCK_NAME"),
        JSON.parse(File.read(File.join(assemble_dir, "input.json"))),
      )
  end

  private

  def assemble_dir
    ENV.fetch("ASSEMBLE_DIR", "/.assemble")
  end
end
