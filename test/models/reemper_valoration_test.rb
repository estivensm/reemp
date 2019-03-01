# == Schema Information
#
# Table name: reemper_valorations
#
#  id          :bigint(8)        not null, primary key
#  user_id     :integer
#  reemper_id  :integer
#  valoration  :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ReemperValorationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
