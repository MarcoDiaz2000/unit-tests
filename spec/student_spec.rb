require 'rspec'
require_relative '../student'
require_relative '../classroom'

RSpec.describe Student do
  let(:classroom) { Classroom.new('Classroom A') }
  let(:student) { Student.new(15, classroom, parent_permission: false) }

  it 'creates a new Student instance' do
    expect(student).to be_a(Student)
  end

  it 'has an age, name, and classroom' do
    expect(student.age).to eq(15)
    expect(student.name).to eq('Unknown')
    expect(student.classroom).to eq(classroom)
  end

  it "adds the student to the classroom's students list" do
    expect(classroom.students).to include(student)
  end

  it 'returns a play_hooky message' do
    expect(student.play_hooky).to eq('¯\\_(ツ)_/¯')
  end
end