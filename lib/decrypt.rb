require_relative 'decryptor'

class Decrypt
  def initialize
    @decryptor = Decryptor.new(File.read(ARGV[0]), ARGV[2], ARGV[3])
  end

  def run
    @decryptor.decrypt_message
    File.write(ARGV[1], @decryptor.decrypt_message)
    puts "Created #{ARGV[1]} with key #{@decryptor.rotator.key.join} and date #{@decryptor.rotator.date}"
  end
end

Decrypt.new.run