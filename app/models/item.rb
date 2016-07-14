# == Schema Information
#
# Table name: items
#
#  id             :integer          not null, primary key
#  serie          :string
#  height         :integer
#  number_drawers :integer
#  double_door    :boolean          default(FALSE)
#  single_door    :boolean          default(FALSE)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  order_id       :integer
#

class Item < ActiveRecord::Base
  belongs_to :order
  has_many :drawers
  before_save :uppercase_serie
  after_create :create_drawers

  private

  def create_drawers
    (1..self.number_drawers).to_a.each do |num|
      self.drawers << Drawer.create( :drawer_number => num, :qty_rows => 1, :qty_columns => 1 )
    end
  end

  def uppercase_serie
    serie.upcase!
  end
end
