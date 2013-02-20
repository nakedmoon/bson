# encoding: utf-8
module BSON

  # This module provides behaviour for serializing and deserializing entire
  # BSON documents, according to the BSON specification.
  #
  # @note The specification is: document ::= int32 e_list "\x00"
  #
  # @see http://bsonspec.org/#/specification
  #
  # @since 2.0.0
  module Document
    extend self

    def deserialize(inbound)

    end

    # Serialize a document into a raw string of bytes.
    #
    # @example Serialize the document into it's raw bytes.
    #   BSON::Document.serialize({ :name => "Sid Vicious" })
    #
    # @param [ Hash ] document The document to serialize.
    # @param [ String ] outbound The string to write to (optional).
    #
    # @return [ String ] The raw encoded bytes.
    #
    # @since 2.0.0
    def serialize(document, outbound = "")
      # document.each do |name, value|
        # value.__bson_encode__(outbound, name)
      # end
      # outbound
    end
  end
end