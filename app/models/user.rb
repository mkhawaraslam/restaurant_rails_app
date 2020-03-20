class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  before_create :set_default_role
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  def set_default_role
  	self.role ||= :admin
  end
end
