class ChoirMember < ApplicationRecord
  validates :firstname, :lastname, :contact, :voice, :cellnumber, :celebrationpoint, presence: true
  validates :contact, uniqueness: true
end
