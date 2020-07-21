class Project < ApplicationRecord
  # Relations
  has_many :languages, through: :language_projects
  has_many :language_projects
  # ActiveStorage
  has_one_attached :photo
  # Validations
  validates :title, :description, :url, presence: true
end
