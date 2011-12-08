Fabricator(:product) do
  sku { sequence(:sku) }
  name { sequence(:name) { |i| "product#{i}" } }
end
