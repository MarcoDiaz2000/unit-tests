require 'rspec'
require_relative '../classroom'
require_relative '../student'

RSpec.describe Classroom do
  let(:classroom) { Classroom.new('Classroom A') }

  it 'creates a new Classroom instance' do
    expect(classroom).to be_a(Classroom)
  end

  it 'has a label' do
    expect(classroom.label).to eq('Classroom A')
  end

  it 'initializes the students list as an empty array' do
    expect(classroom.students).to be_an(Array)
    expect(classroom.students).to be_empty
  end

  it "adds a student to the students list and sets the student's classroom" do
    student = Student.new(15, classroom, parent_permission: true)
    expect(classroom.students).to include(student)
    expect(student.classroom).to eq(classroom)
  end
end
