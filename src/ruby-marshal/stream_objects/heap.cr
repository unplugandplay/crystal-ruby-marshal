require "./stream_object"

module Ruby::Marshal

	class Heap

		@@sym_heap = ::Array(Symbol).new
		@@obj_heap = ::Array(String).new

		def self.add(symbol : Symbol)
			@@sym_heap << symbol
		end

		def self.add(object : String)
			@@obj_heap << object
		end

		def self.get_sym(index : Int32)
			@@sym_heap[index]
		end

		def self.get_obj(index : Int32)
			@@obj_heap[index]
		end

		def self.init
		  @@sym_heap.clear
    end

	end

end
