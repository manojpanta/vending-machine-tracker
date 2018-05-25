require 'rails_helper'

describe 'User sees all snacks name and price' do
  scenario 'when they visit machine show page' do
    machine_name = 'name1'
    snack_name = 'candy'
    price = 123
    machine = Machine.create(machine_name)
    machine.snacks.create(snack_name, price)

    visit machine_path(machine)

    expect(page).to have_content(snack_name)
    expect(page).to have_content(price)
  end
end
