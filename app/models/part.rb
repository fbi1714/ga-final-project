# == Schema Information
#
# Table name: parts
#
#  id           :integer          not null, primary key
#  cell_content :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Part < ActiveRecord::Base
  belongs_to :drawer
end
