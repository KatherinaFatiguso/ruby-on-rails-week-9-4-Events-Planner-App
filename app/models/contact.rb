class Contact < ActiveRecord::Base
  has_many :tasks
end
