class Medicine < ApplicationRecord
   def self.search(search)
    if search
      where("name LIKE ? ", "%#{search}%")
    else
      order('name DESC')
    end
  end
end
