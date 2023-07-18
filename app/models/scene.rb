class Scene < ApplicationRecord
  has_many :actions, class_name: 'Action', dependent: :delete_all
end
