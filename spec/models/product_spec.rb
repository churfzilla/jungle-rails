require "rails_helper"

RSpec.describe Product, type: :model do
  describe 'Validations' do

  let(:hammer) { Product.new(name: 'Hammer', price: 40.50, description: 'blah', quantity: 2, category_id: 1 ) }

  it 'should be a valid test subject' do
    expect(hammer).to(be_valid)
    # raise Error unless user.valid?
  end

    it 'should have a name' do
      hammer.save
      expect(hammer.name).to be_present
    end

    it 'should have a price' do
      hammer.save
      expect(hammer.price).to be_present
    end

    it 'should have a quantity' do
      hammer.save
      expect(hammer.quantity).to be_present
    end

    it 'should have a category' do
      hammer.save
      expect(hammer.category_id).to be_present
    end

  end

end