require 'rspec'
require_relative '../nameable'
require_relative '../decorator'

RSpec.describe Decorator do
  let(:nameable) { Nameable.new }
  let(:decorator) { Decorator.new(nameable) }

  it 'creates a new Decorator instance' do
    expect(decorator).to be_a(Decorator)
  end

  it 'calls the correct_name method of the nameable object' do
    allow(nameable).to receive(:correct_name).and_return('John Doe')
    expect(decorator.correct_name).to eq('John Doe')
  end
end

RSpec.describe CapitalizeDecorator do
  let(:nameable) { Nameable.new }
  let(:decorator) { CapitalizeDecorator.new(nameable) }

  it 'creates a new CapitalizeDecorator instance' do
    expect(decorator).to be_a(CapitalizeDecorator)
  end

  it 'calls the correct_name method of the nameable object and capitalizes the result' do
    allow(nameable).to receive(:correct_name).and_return('john doe')
    expect(decorator.correct_name).to eq('John doe')
  end
end

RSpec.describe TrimmerDecorator do
  let(:nameable) { Nameable.new }
  let(:decorator) { TrimmerDecorator.new(nameable) }

  it 'creates a new TrimmerDecorator instance' do
    expect(decorator).to be_a(TrimmerDecorator)
  end

  it 'calls the correct_name method of the nameable object and trims the result' do
    allow(nameable).to receive(:correct_name).and_return('John Doe')
    expect(decorator.correct_name).to eq('John Doe')
  end

  it 'trims the name to 10 characters if it is longer than 10 characters' do
    allow(nameable).to receive(:correct_name).and_return('Very Long Name')
    expect(decorator.correct_name).to eq('Very Long ')
  end
end
