# == Schema Information
#
# Table name: orders
#
#  id           :integer          not null, primary key
#  description  :text
#  order_number :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Order < ActiveRecord::Base
  belongs_to :user
  has_many :items
end
