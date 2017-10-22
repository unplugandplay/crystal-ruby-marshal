require "./stream_object"

module Ruby::Marshal

	TWO_BYTE_NEGATIVE_INT_ID = 0xfe
	TWO_BYTE_NEGATIVE_INT_LENGTH = 0x02
	class TwoByteNegativeInt < StreamObject
	
		def initialize
			super(TWO_BYTE_NEGATIVE_INT_ID, TWO_BYTE_NEGATIVE_INT_LENGTH)
			@data = Int16.new(0)
		end

		def read(stream : Bytes)
			@data = Int16.new(stream[1, size].join)
		end

	end

end