require 'rails_helper'

describe Astronaut, type: :model do
  describe "class methods" do
    it 'average age' do
      Astronaut.create(name: "Joe", age: 20, job: 'janitor')
      Astronaut.create(name: "Bill", age: 30, job: 'cook')

      expect(Astronaut.average_age).to eq(25)
    end
  end
end
