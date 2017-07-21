FactoryGirl.define do
  factory(:animal) do
    name('lilliy')
    animal_type('cat')
    age(1)
    sex('male')
    weight(2)
    available(true)
    adoption_fee(75)
  end
end
