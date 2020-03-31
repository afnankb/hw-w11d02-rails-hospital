class Patient < ApplicationRecord

    validates :first_name, presence: true
    validates :diagnosis, presence: true
end
