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
end
