class LamportNote < ApplicationRecord
belongs_to :user
validates :author, presence: true

def self.search(search)
where("titulo LIKE ?", "%#{search}%")
end

end
