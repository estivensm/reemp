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
#  lat              :decimal(, )
#  lng              :decimal(, )
#  instagram        :string
#  facebook         :string
#  twitter          :string
#

class Reemper < ActiveRecord::Base
	
	belongs_to :category, optional: true
	belongs_to :specialty, optional: true
	has_and_belongs_to_many :subspecialties
	belongs_to :contac_reemper, dependent: :destroy, optional: true
	belongs_to :user

	include AlgoliaSearch

	algoliasearch per_environment: true  do

	    attribute :user do
	      { name: user.names, email: user.email, avatar: user.avatar_url }
	    end

	   	attribute :category do
	      { name: category.name }
	    end
		  # all attributes will be sent
		add_attribute :specialidades

	   	attribute :specialty do
	      { name: specialty.name }
	    end

	   	#attribute :reemper do
	      #{ name: reemper.name }
	    #end

	    attribute :document_type, :document_numer, :profession_card, :academy_leve, :profession, :university, :university_state, :biography, :language, :verified, :city, :valoration, :academy_level, :state_loc, :img_reemp

	    geoloc :lat, :lng
	    
	end

	def specialidades
	  self.subspecialties.map do |s|
	    { name: s.name }
	  end
	end
	#mount_uploader :img_reemp, ReemperIconUploader
end

