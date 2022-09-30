class FrameworkLevel < ApplicationRecord
  belongs_to :framework
  belongs_to :user
end
