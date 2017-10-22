require "./stream_object"

module Ruby::Marshal

	TWO_BYTE_POSITIVE_INT_ID = 0x02
	TWO_BYTE_POSITIVE_INT_LENGTH = 0x02
	class TwoBytePositiveInt < StreamObject
	
		def initialize
			super(TWO_BYTE_POSITIVE_INT_ID, TWO_BYTE_POSITIVE_INT_LENGTH)
			@data = UInt16.new(0)
		end

		def read(stream : Bytes)
			@data = UInt16.new(stream[1, size].join)
		end

	end

end