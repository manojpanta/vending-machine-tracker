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
  scenario ' we can see average price for snacks' do
    location = 'name1'
    snack_name = 'candy'
    price = 123
    avg_price = 'avg_price: 123'
    owner = Owner.create!(name: 'manoj')

    machine = Machine.create!(owner: owner, location: location)
    machine.snacks.create!(name: snack_name, price: price)

    visit machine_path(machine)

    expect(page).to have_content(avg_price)
    expect(page).to have_content(machine.location)
    expect(page).to have_content(machine.avg_price)
  end
end
