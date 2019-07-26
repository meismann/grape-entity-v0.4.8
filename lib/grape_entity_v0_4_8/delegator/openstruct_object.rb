module GrapeV0_14_0
  class Entity
    module Delegator
      class OpenStructObject < Base
        def delegate(attribute)
          object.send attribute
        end
      end
    end
  end
end
