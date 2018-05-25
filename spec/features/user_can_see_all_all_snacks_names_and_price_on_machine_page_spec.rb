require 'rails_helper'

describe 'User sees all snacks name and price' do
  scenario 'when they visit machine show page' do
    location = 'name1'
    snack_name = 'candy'
    price = 123
    owner = Owner.create!(name: 'manoj')
    machine = Machine.create!(owner: owner, location: location)
    machine.snacks.create!(name: snack_name, price: price)

    visit machine_path(machine)

    expect(page).to have_content(snack_name)
    expect(page).to have_content(price)
  end
end
