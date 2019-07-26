require 'grape_entity_v0_4_8/delegator/base'
require 'grape_entity_v0_4_8/delegator/hash_object'
require 'grape_entity_v0_4_8/delegator/openstruct_object'
require 'grape_entity_v0_4_8/delegator/fetchable_object'
require 'grape_entity_v0_4_8/delegator/plain_object'

module GrapeV0_14_0
  class Entity
    module Delegator
      def self.new(object)
        if object.is_a?(Hash)
          HashObject.new object
        elsif defined?(OpenStruct) && object.is_a?(OpenStruct)
          OpenStructObject.new object
        elsif object.respond_to? :fetch, true
          FetchableObject.new object
        else
          PlainObject.new object
        end
      end
    end
  end
end
