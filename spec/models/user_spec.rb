require "rails_helper"

RSpec.describe User, type: :model do
  describe 'Validations' do

    let(:chad) { User.new(first_name: 'Chad', last_name: 'Bruhaug', email: 'chadbruhaug@gmail.com', password: 'password', password_confirmation: 'password' )}
    let(:chad2) { User.new(first_name: 'Chad', last_name: 'Bruhaug', email: 'ChadBruhaug@gmail.com', password: 'password', password_confirmation: 'password' )}
    let(:chad3) { User.new(first_name: 'Chad', last_name: 'Bruhaug', email: 'Chad3Bruhaug@gmail.com', password: 'password', password_confirmation: 'password' )}
    let(:emailtest) { User.new(first_name: 'Email', last_name: 'Test', email: 'test@test.com', password: 'test', password_confirmation: 'test')}

    it 'should be a valid test subject' do
        expect(chad).to(be_valid)
        # raise Error unless user.valid?
    end

    xit 'should not be a valid test subject' do
        expect(chad2).to_not(be_valid)
        # raise Error unless user.valid?
    end

    xit 'should have a unique email' do
      chad2.save
      chad.save
      expect(chad).to_not(be_valid)
    end

    it 'Should have a password longer than 6 chars' do
      emailtest.save
      expect(emailtest).to_not(be_valid)
    end

  end

end
