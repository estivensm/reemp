# == Schema Information
#
# Table name: consulting_rooms
#
#  id          :bigint(8)        not null, primary key
#  address     :string
#  lat         :decimal(, )
#  lng         :decimal(, )
#  city        :string
#  first_photo :string
#  sub_photo   :string
#  state       :string
#  user_id     :integer
#  reemper_id  :integer
#  info_state  :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ConsultingRoom < ApplicationRecord
	mount_uploader :first_photo, ConsultingFistUploader
	mount_uploader :sub_photo, ConsultingSubUploader
end
