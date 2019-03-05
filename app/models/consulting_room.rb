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

class ConsultingRoom < ActiveRecord::Base
	include AlgoliaSearch
	belongs_to :user, dependent: :destroy

	after_create :reemper

	def reemper
		Reemper.where(user_id: self.user.id).update(lat: self.lat , lng: self.lng);
	end

	algoliasearch per_environment: true  do

	    attribute :user do
	      { name: user.names }
	    end

	   	#attribute :reemper do
	      #{ name: reemper.name }
	    #end

	    attribute :address, :city, :first_photo, :sub_photo, :user_id, :reemper_id, :info_state

	    geoloc :lat, :lng



	end

	mount_uploader :first_photo, ConsultingFistUploader
	mount_uploader :sub_photo, ConsultingSubUploader
end
