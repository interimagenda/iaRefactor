class EmployerRepresentative < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :jobs, dependent: :destroy

  def self.search(query)
  end

end
