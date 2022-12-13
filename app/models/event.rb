class Event < ApplicationRecord
  belongs_to :organiser, class_name 'User'
  has_many :participations
  has_many :participants, through: :participations, class_name: 'User'
end
