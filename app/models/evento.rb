class Evento < ApplicationRecord
	belongs_to :user
	has_many :item_event

def self.search(search)
where("name LIKE ?", "%#{search}%")
end

end
