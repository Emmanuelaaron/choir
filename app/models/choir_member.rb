class ChoirMember < ApplicationRecord
  validates :firstname, :lastname, :contact, :voice, :cellnumber, :celebrationpoint, presence: true
  validates :contact, uniqueness: true

  scope :kansanga_members, -> { where('celebrationpoint' => 'kansanga') }
  scope :downtown_members, -> { where('celebrationpoint' => 'downtown') }
  scope :bweyogerere_members, -> { where('celebrationpoint' => 'bweyogerere') }
  scope :kyengera_members, -> { where('celebrationpoint' => 'kyengera') }
  scope :lubowa_members, -> { where('celebrationpoint' => 'Lubowa') }
  scope :entebbe_members, -> { where('celebrationpoint' => 'entebbe') }
  scope :gulu_members, -> { where('celebrationpoint' => 'gulu') }
  scope :bugolobi_members, -> { where('celebrationpoint' => 'bugolobi') }
  scope :juba_members, -> { where('celebrationpoint' => 'juba') }
  scope :mbarara_members, -> { where('celebrationpoint' => 'mbarara') }
  # Ex:- scope :active, -> {where(:active => true)}
end
