class Student < ApplicationRecord
    belongs_to :school

    def to_s
        "Name: #{name}, Age: #{age}"
    end
end
