module GrapeV0_14_0
  class Entity
    module Delegator
      class HashObject < Base
        def delegate(attribute)
          object[attribute]
        end
      end
    end
  end
end
