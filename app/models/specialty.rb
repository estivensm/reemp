# == Schema Information
#
# Table name: specialties
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  category_id :integer
#  code        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Specialty < ApplicationRecord
	has_many :reemper
	belongs_to :category, optional: true
end
