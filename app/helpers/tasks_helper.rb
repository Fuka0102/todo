module TasksHelper
    def deadline?(deadline)
      return false 
        if deadline.nil?
          deadline < Time.current
        end
    end
end
