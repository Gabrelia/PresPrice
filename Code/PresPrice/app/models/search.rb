class Search < ApplicationRecord
		belongs_to :medicine

	def medicine_name
	  medicine.try(:name)
	end

	def medicine_name=(name)
	  self.medicine = Medicine.find_by(name: name) if name.present?
	end

	def medicine_name=(name)
	  self.medicine = Medicine.find_or_create_by(name: name) if name.present?
	end
end
