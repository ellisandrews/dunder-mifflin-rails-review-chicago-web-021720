class Employee < ApplicationRecord
    belongs_to :dog, optional: true # Nice work setting the optional here. Great validations below too.

    validates_presence_of :first_name, :last_name, :alias, :title, :office
    validates_uniqueness_of :alias, :title

    def name
        "#{first_name} #{last_name}"
    end
end
