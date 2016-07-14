# == Schema Information
#
# Table name: drawers
#
#  id            :integer          not null, primary key
#  drawer_number :integer
#  qty_rows      :integer
#  qty_columns   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Drawer < ActiveRecord::Base
  belongs_to :item
  has_many :parts
end
