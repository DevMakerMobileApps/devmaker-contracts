module DevmakerContracts
  class Contract < ApplicationRecord
    scope :search_for, -> (string) do
            s = "%#{string}%"
            where("name ilike ? or slug ilike ?", s, s) if string.present?
          end

    validates :slug, uniqueness: true
  end
end
