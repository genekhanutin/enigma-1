require 'encryptor'

class Encrypt

  def initialize
    @encryptor = Encryptor.new[ARGV]
  end

  def encrypted_message
    @encryptor.encrypt_message
  end

  def encrypt
    file = File.open(ARGV[1], "w")
    file.write "#{encrypted_message}"
  end

  def message_to_console
    puts "Created 'encrypted.txt' with the #{key of some kind}  and date #{}"
  end
end

Encrypt.new.message_to_console