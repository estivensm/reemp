# == Schema Information
#
# Table name: contacts
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  email           :string
#  category_id     :integer
#  country         :string
#  profession_name :string
#  specialty_name  :string
#  city            :string
#  profession_id   :integer
#  specialty_id    :integer
#  instagram       :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Contact < ApplicationRecord
	belongs_to :category
	after_create :enviar_mail


	def enviar_mail
		ContactoMailer.contacto(self).deliver_now
	end
	
end
