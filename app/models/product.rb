class Product < ApplicationRecord
    validates :title, presence: true, length: {minimum: 5}
    validates :description, presence: true, length: {minimum: 5}
end
