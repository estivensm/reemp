# == Schema Information
#
# Table name: contacts
#
#  id            :bigint(8)        not null, primary key
#  name          :string
#  email         :string
#  category_id   :integer
#  country       :string
#  city          :string
#  profession_id :integer
#  specialty_id  :integer
#  instagram     :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Contact < ApplicationRecord
end
