class Animal < ApplicationRecord
  max_paginates_per 20

  validates :name, :animal_type, presence: true
  scope :name_search, -> (input) {where("name like ?", "%#{input}%")}

end
