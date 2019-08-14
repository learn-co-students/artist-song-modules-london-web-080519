module Memorable
    module ClassMethods
        #extracted these from artist & song
        def reset_all
            all.clear
        end

        def count
            all.count
        end
    end

    module InstanceMethods
        def initialize
            self.class.all << self
        end
    end

end