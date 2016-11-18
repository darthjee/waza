class Technic < ActiveRecord::Base
  belongs_to :category
  belongs_to :fase
end
