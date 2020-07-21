class Language < ApplicationRecord
  # Relations
  has_many :projects, through: :language_projects
  has_many :language_projects
  # ActiveStorage
  has_one_attached :photo
  # Validations
  validates :photo, presence: true
end
