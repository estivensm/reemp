# == Schema Information
#
# Table name: contac_reempers
#
#  id          :bigint(8)        not null, primary key
#  user_id     :integer
#  reemper_id  :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ContacReemper < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :reemper, optional: true
end
