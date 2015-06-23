class Shoe < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  before_save(:capitalize)

private

  define_method(:capitalize) do
    new_name = self.name.capitalize!()
  end
end
