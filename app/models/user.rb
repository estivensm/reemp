# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  expires_at             :datetime
#  expires_ats            :string
#  provider               :string
#  acces_token            :string
#  refresh_token          :string
#  uid                    :string
#  token                  :string
#  user_name              :string
#  names                  :string
#  last_names             :string
#  phone                  :string
#  avatar                 :string
#  city                   :string
#  state                  :boolean
#  user_type              :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :consulting_rooms
  has_many :contac_reemper
  has_one :reemper

  mount_uploader :avatar, AvatarUploader
  #validates :user_name, uniqueness: { message: "No Permitido" }
  #validates :phone, uniqueness: { message: "Ingresa otro diferente" }

end
