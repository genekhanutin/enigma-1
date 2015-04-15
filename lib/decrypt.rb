require_relative 'decryptor'

class Decrypt
  def initialize
    @decryptor = Decryptor.new(File.read(ARGV[0]), File.read(ARGV[2]), File.read(ARGV[3]))
  end

  def run
    @decryptor.decrypt_message
    File.write(ARGV[1], @decryptor.decrypt_message)
  end
end