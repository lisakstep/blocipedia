class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  has_many :wikis

  def admin?
    role == 'admin'
  end

  def paid_member?
    role == 'paid_member'
  end

  def standard_member?
    role == 'standard_member'
  end
end
