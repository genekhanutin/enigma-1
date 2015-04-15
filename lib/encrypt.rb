require_relative 'encryptor'

class Encrypt
  def initialize
    @encryptor = Encryptor.new(File.read(ARGV[0]))
  end

  def run
    @encryptor.encrypt_message
    File.write(ARGV[1], @encryptor.encrypt_message)
    puts "Created #{ARGV[1]} with key #{@encryptor.rotator.key.join} and date #{Time.now.strftime('%m%d%y')}"
  end
end

Encrypt.new.run
