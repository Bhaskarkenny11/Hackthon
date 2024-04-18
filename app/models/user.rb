class User < ApplicationRecord
  
    belongs_to :team, optional: true # Assuming a user can exist without a team or until assigned to a team

  # Validations (you may want to add more depending on your application requirements)
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true,length:{minimum: 6 }
end
