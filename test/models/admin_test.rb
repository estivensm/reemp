# == Schema Information
#
# Table name: admins
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  user_name              :string
#  name                   :string
#  last_name              :string
#  avatar                 :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
