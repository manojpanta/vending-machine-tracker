class Machine < ApplicationRecord
  belongs_to :owner
  has_many :machine_snacks
  has_many :snacks, through: :machine_snacks, dependent: :destroy


  def avg_price
    snacks.average(:price)
  end

  def snack_count
    snacks.count

  end
end
