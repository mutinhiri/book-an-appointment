require 'rails_helper'

RSpec.describe Doctor, type: :model do
  subject do
    doctor = Doctor.new(
      name: 'Bunbee',
      image: '',
      speciality: 'eyes',
      bio: 'doctor with great experience',
      experience: 4
    )
    return doctor
  end

  describe 'validation for doctor model' do
    it 'should have a valid name' do
      subject.name = 'Bunbee'
      expect(subject.name).to eq('Bunbee')
    end
  end
end
