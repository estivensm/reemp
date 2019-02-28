# == Schema Information
#
# Table name: categories
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  code        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Category < ApplicationRecord
	has_many :contacts
	has_many :reemper
	has_many :specialty

	include AlgoliaSearch

	algoliasearch per_environment: true  do

	    attribute :name, :description, :code

	end
end
