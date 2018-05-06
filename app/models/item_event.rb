class ItemEvent < ApplicationRecord
  belongs_to :evento

  def completed?
  	!completo_em.blank?
  end
end
