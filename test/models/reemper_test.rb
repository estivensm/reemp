# == Schema Information
#
# Table name: reempers
#
#  id               :bigint(8)        not null, primary key
#  document_type    :string
#  document_numer   :string
#  profession_card  :string
#  academy_leve     :string
#  profession       :string
#  university       :string
#  university_state :boolean
#  biography        :text
#  language         :string
#  specialty_id     :integer
#  category_id      :integer
#  user_id          :integer
#  verified         :boolean
#  category_name    :string
#  specialty_name   :string
#  city             :string
#  valoration       :integer
#  academy_level    :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class ReemperTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
