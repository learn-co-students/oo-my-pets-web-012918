module Persistable
  module ClassMethods
    def reset_all
      self::ALL.clear
      # self:: is called on Owner because Persistable is extended/called
      # on in Owner.rb
      # remember to use double colons ::
    end

    def all?
      self::ALL
    end

    def count
      self::ALL.size
    end
  end

  module InstanceMethods
    def initialize(*args)
      self.class::ALL << self
    end
  end
end
