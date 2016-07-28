require 'pry'

class CashRegister

	attr_accessor :total, :qty, :price, :discount, :item

	def initialize(discount=0)
		@total = 0
		@discount = discount
		@items = []
	end

	def add_item(item, price, qty=1)

		@total = self.total += price * qty

		qty.times do
			@items << item
		end

		# item.each do |x| #=> try later?


	end

	def items
		# binding.pry

		@items
		
	end

	def apply_discount
		# binding.pry
		if @discount > 0
			@total = @total - (@discount.to_f/100 * @total)
			"After the discount, the total comes to $#{@total.to_i}."
		else	
			"There is no discount to apply."
		end 	

	end

	def void_last_transaction

		self.total -= self.total

	end


end