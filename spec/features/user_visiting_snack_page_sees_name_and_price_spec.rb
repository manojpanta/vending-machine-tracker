require 'rails_helper'

describe 'User sees all snacks name and price' do
  scenario 'when they visit snack show page' do
    location = 'name1'
    snack_name = 'candy'
    price = 123.0
    owner = Owner.create!(name: 'manoj')
    machine = Machine.create!(owner: owner, location: location)
    snack = machine.snacks.create!(name: snack_name, price: price)

    visit snack_path(snack)

    expect(page).to have_content(snack.name)
    expect(page).to have_content(snack.price)
    expect(page).to have_content(machine.location)
    expect(page).to have_content("name1(1 kinds of snacks, average price of 123.0)")
  end
end
