require "./stream_object"

module Ruby::Marshal

	NIL_TYPE_IDENTIFIER = Int8.new(0) # "0"

	class NullStreamObject < StreamObject

		getter :data
    @data : ::Nil

		def initialize(stream : Bytes)
      super(0x00, Int32.new(0x00), Int8.new(0))
			@data = nil
		end

		def read(stream : Bytes)
			# noop
		end

		def stream_size
			1
		end

	end

end
