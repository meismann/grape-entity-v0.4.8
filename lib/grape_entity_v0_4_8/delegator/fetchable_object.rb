module GrapeV0_14_0
  class Entity
    module Delegator
      class FetchableObject < Base
        def delegate(attribute)
          object.fetch attribute
        end
      end
    end
  end
end
