require 'spec_helper'



describe '#greet' do
  it 'Says hello' do
    test=Gemtest::Test.new
    expect(test.greet).to eq("Hello!")
  end
end
