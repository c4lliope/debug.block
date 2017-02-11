require "json"

class Assemble
  def self.current_run
    Run.new(
      ENV.fetch("ASSEMBLE_BLOCK_NAME"),
      ENV.fetch("ASSEMBLE_DIR"),
    )
  end

  class Run < Struct.new(:block_name, :assemble_dir)
    def assemble_dir
      ENV.fetch("ASSEMBLE_DIR", "/.assemble")
    end

    def input
      JSON.parse(File.read(File.join(assemble_dir, "input.json")))
    end
  end
end
