require('spec_helper')

describe(Store) do
  it{should have_and_belong_to_many(:shoes)}
end

describe(Store) do
  describe('#capitalize') do
    it('capitalizes the first letter of the store name') do
      test_store = Store.new({:name => 'champs'})
      expect(test_store.name.capitalize()).to(eq('Champs'))
    end
  end
  describe('#validation') do
    it('validates the presence of store name') do
      test_store = Store.new({:name => ""})
      expect(test_store.save()).to(eq(false))
    end
  end
end
