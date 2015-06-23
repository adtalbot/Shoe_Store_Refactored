class Store < ActiveRecord::Base
  has_and_belongs_to_many(:shoes)
  before_save(:capitalize)

private

  define_method(:capitalize) do
    new_name = self.name.capitalize!()
  end
end
