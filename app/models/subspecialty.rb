# == Schema Information
#
# Table name: subspecialties
#
#  id           :bigint(8)        not null, primary key
#  specialty_id :integer
#  name         :string
#  description  :text
#  code         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Subspecialty < ApplicationRecord
end
