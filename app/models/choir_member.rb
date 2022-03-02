class ChoirMember < ApplicationRecord
  validates :firstname, :lastname, :contact, :voice, :cellnumber, :celebrationpoint, :descipled, presence: true
  validates :contact, :email, uniqueness: true

  scope :kansanga_members, -> { where('celebrationpoint' => 'Kansanga') }
  scope :downtown_members, -> { where('celebrationpoint' => 'Downtown') }
  scope :bweyogerere_members, -> { where('celebrationpoint' => 'Bweyogerere') }
  scope :kyengera_members, -> { where('celebrationpoint' => 'Kyengera') }
  scope :lubowa_members, -> { where('celebrationpoint' => 'Lubowa') }
  scope :entebbe_members, -> { where('celebrationpoint' => 'Entebbe') }
  scope :gulu_members, -> { where('celebrationpoint' => 'Gulu') }
  scope :bugolobi_members, -> { where('celebrationpoint' => 'Bugolobi') }
  scope :juba_members, -> { where('celebrationpoint' => 'Juba') }
  scope :mbarara_members, -> { where('celebrationpoint' => 'Mbarara') }
  scope :jinja_members, -> { where('celebrationpoint' => 'Jinja') }
  # Ex:- scope :active, -> {where(:active => true)}
end
