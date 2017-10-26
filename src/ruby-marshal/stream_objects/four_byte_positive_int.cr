require "./integer_stream_object"

module Ruby::Marshal

	FOUR_BYTE_POSITIVE_INT_ID = 0x04
  FOUR_BYTE_POSITIVE_INT_LENGTH = Int32.new(0x04)
	class FourBytePositiveInt < IntegerStreamObject

		def initialize(stream : Bytes)
			super(FOUR_BYTE_POSITIVE_INT_ID, FOUR_BYTE_POSITIVE_INT_LENGTH)
			read(stream)
		end

		def read(stream : Bytes)
			@data = ::IO::ByteFormat::LittleEndian.decode(Int32, stream[1, size])
		end

	end

end
