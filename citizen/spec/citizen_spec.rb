require_relative "../citizen"

describe Citizen do
  describe "#can_vote?" do
    it 'return true if age if over or equal 18' do
      citizen = Citizen.new('', '', 20)
      actual_result = citizen.can_vote?
      expected = true

      expect(actual_result).to eq(expected)
    end

    it 'return false if age if under 18' do
      citizen = Citizen.new('', '', 16)
      actual_result = citizen.can_vote?
      expected = false

      expect(actual_result).to eq(expected)
    end
  end

  describe "#full_name" do
    it 'Returns an empty string if passed 2 empty strings' do
      citizen = Citizen.new('', '', 16)
      actual_result = citizen.full_name
      expected = ' '

      expect(actual_result).to eq(expected)
    end

    it 'Returns a correctly formatted name if passed first and last names' do
      citizen = Citizen.new('john', 'doe', 40)
      actual_result = citizen.full_name
      expected = 'John Doe'

      expect(actual_result).to eq(expected)
    end
  end
end
