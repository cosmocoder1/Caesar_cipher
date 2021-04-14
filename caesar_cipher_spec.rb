#spec/caesar_cipher_spec.rb

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
  config.order = 'default'
end

describe "cCipher" do
  it "returns the sum of two numbers" do
    expect(calculator.add(5, 2)).to eql(7)
  end


