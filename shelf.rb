# frozen_string_literal: true

# The virtual machine
class VM
  @table = {
    :Main => [],
    'P' => 0
  }
  @idx = 0

  def initialize(tokens)
    @tokens = tokens
  end

  def exec
    table[@tokens[@idx]]
  end

  def run
    exec while @idx < @tokens.length
  end

  def match_bracket
    opened = 1
    while opened <= 1
      if @tokens[@idx] == ']'
      opened -= 1
      end
    end
  end

  private :exec, :match_bracket
end

tokens = File.read(ARGV[0]).split
vm = VM.new tokens
vm.run
