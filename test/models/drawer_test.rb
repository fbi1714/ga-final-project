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

require 'test_helper'

class DrawerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
