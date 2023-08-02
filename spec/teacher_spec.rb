require 'rspec'
require_relative '../teacher'

RSpec.describe Teacher do
  let(:teacher) { Teacher.new(30, 'Mathematics', name: 'John Doe') }

  it 'creates a new Teacher instance' do
    expect(teacher).to be_a(Teacher)
  end

  it 'has an age, name, and specialization' do
    expect(teacher.age).to eq(30)
    expect(teacher.name).to eq('John Doe')
    expect(teacher.instance_variable_get(:@specialization)).to eq('Mathematics')
  end

  it 'can use services' do
    expect(teacher.can_use_services?).to eq(true)
  end
end
