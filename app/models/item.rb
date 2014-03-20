class Item < ActiveRecord::Base
	belongs_to :type

	def self.search(title, operand, description, owner, type)
			if title != "" and description != ""
				self.where("title LIKE ? #{operand} description LIKE ? #{operand} owner LIKE ? #{operand} type_id = ?",
				 '%'+title+'%', '%'+description+'%', owner, type).to_a
			elsif title != ""
				self.where("title LIKE ? #{operand} owner LIKE ? #{operand} type_id = ?",
				 '%'+title+'%', owner, type).to_a
			else
				self.where("description LIKE ? #{operand} owner LIKE ? #{operand} type_id = ?",
				 '%'+description+'%', owner, type).to_a
			end
	end
end
