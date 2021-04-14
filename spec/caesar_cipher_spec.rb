#spec/caesar_cipher_spec.rb

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
  config.order = 'default'
end

require "./lib/caesar_cipher"

describe Cipher do
  describe "#run" do
    it "returns shifted message" do
      cipher = Cipher.new
      expect(cipher.run("abc", 1)).to eql("bcd")
    end
  end
end    



