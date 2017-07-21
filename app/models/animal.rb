class Animal < ApplicationRecord
  validates :name, :animal_type, presence: true
  scope :name_search, -> (input) {where("name like ?", "%#{input}%")}
end
