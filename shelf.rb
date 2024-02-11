# frozen_string_literal: true

# The virtual machine
class VM
  helpers do
    def generate_vm
      # match brackets
      tokens = []
      opened = 1
      while opened <= 1
        token = @tokens[@idx]
        opened -= 1 if token == ']'
        opened += 1 if token == '['
        tokens << token
      end
      tokens.chop.slice! 0
      @table['Main'] << VM.new(tokens)
    end
  end

  @table = {
    'Main' => [],
    'P' => [0],
    '[' => method(:generate_vm),
    '<<' => lambda do
      id, var = @table['Main'].pop(2)
      @table[id] = var
    end,
    '+' => lambda do
      a, b = @table['Main'].pop(2)
      @table['Main'] << a + b
    end,
    '*' => lambda do
      a, b = @table['Main'].pop(2)
      @table['Main'] << a * b
    end,
    '-' => lambda do
      a, b = @table['Main'].pop(2)
      @table['Main'] << a - b
    end,
    '/' => lambda do
      a, b = @table['Main'].pop(2)
      @table['Main'] << a / b
    end
  }

  @idx = 0

  def initialize(tokens)
    @tokens = tokens
  end

  def exec
    token = @tokens[@idx]
    @table.key? token ? @table[token].call : @table['main'] << token
  end

  def run
    exec while @idx < @tokens.length
  end
end

tokens = File.read(ARGV[0]).split
vm = VM.new tokens
vm.run
