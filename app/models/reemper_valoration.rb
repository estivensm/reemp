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

class ReemperValoration < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :reemper, dependent: :destroy
end
