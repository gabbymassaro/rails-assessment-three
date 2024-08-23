class Pizza < ActiveRecord::Base
  belongs_to :pizzeria

  validates :name, :description, presence: true
end