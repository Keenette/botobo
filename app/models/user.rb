class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :subscriptions
  has_many :categories, through: :subscriptions

  validates :first_name, presence: true
  validates :last_name, presence: true

  before_validation :set_default_role

  enum role: [:user, :un_particulier, :un_club_sportif, :admin]

  private

  def set_default_role
    self.role ||= :user
  end

  # def subscribed_to?(category)
  #   self.categories.include?(category)
  # end
end
