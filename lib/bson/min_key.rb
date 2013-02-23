# encoding: utf-8
module BSON

  # Represents a $minKey type, which compares less than any other value in the
  # specification.
  #
  # @see http://bsonspec.org/#/specification
  #
  # @since 2.0.0
  class MinKey

    # A $minKey is type 0xFF in the BSON spec.
    #
    # @since 2.0.0
    BSON_TYPE = 255.chr.freeze

    # Encode the $minKey to its raw BSON bytes and append it to the provided
    # outbound raw bytes string.
    #
    # @example Encode the $minKey.
    #   min_key.__bson_encode__("key", buffer)
    #
    # @param [ String ] field The name of the string's field in the document.
    # @param [ BSON::Buffer ] buffer The buffer to serialize to.
    #
    # @return [ BSON::Buffer ] The buffer.
    #
    # @since 2.0.0
    def __bson_encode__(field, buffer)
      buffer.write_byte(BSON_TYPE).write_cstring(field)
    end
  end
end
