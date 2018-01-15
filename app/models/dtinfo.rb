class Dtinfo < ApplicationRecord
  belongs_to :unit
  belongs_to :daypart
  validate :validate_data
  validates_presence_of :minutes, :seconds, :day, :unit, :daypart, :message => "Tämä kenttä on pakollinen tieto"
  HUMANIZED_ATTRIBUTES = {
      :minutes => "Minuutit",
      :seconds => "Sekunnit",
      :day => "Päivämäärä",
      :unit => "Yksikkö",
      :daypart => "Päivänosa"
  }

  def validate_data
    existing = Dtinfo.where(:day => day, :daypart_id => daypart_id, :unit => unit_id).where.not(:id => id)
    self.errors.add(:day, "Tälle päivämäärälle on jo asetettu aika valituin tiedoin.") if existing.present?
  end

  def self.human_attribute_name(attr, options={})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end


end
