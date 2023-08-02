require 'rspec'
require_relative '../person'

RSpec.describe Person do
  let(:person_name) { 'John Doe' }
  let(:person_age) { 25 }
  let(:person) { Person.new(person_age, name: person_name) }

  describe 'Initialization' do
    it 'creates a new Person instance' do
      expect(person).to be_a(Person)
    end

    it 'has an ID, name, and age' do
      expect(person.id).to be_an(Integer)
      expect(person.name).to eq(person_name)
      expect(person.age).to eq(person_age)
    end

    it 'has parent permission by default' do
      expect(person.can_use_services?).to be(true)
    end
  end

  describe '#can_use_services?' do
    it 'returns true if the person is of age' do
      person = Person.new(20)
      expect(person.can_use_services?).to be(true)
    end

    it 'returns true if the person has parent permission' do
      person = Person.new(15, parent_permission: true)
      expect(person.can_use_services?).to be(true)
    end

    it 'returns false if the person is underage and without parent permission' do
      person = Person.new(15, parent_permission: false)
      expect(person.can_use_services?).to be(false)
    end
  end

  describe '#correct_name' do
    it 'returns the correct name' do
      expect(person.correct_name).to eq(person_name)
    end
  end
end
