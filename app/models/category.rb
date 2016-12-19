class Category < ActiveRecord::Base
 has_many :technics, dependent: :delete_all
end
