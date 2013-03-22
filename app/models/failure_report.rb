class FailureReport < ActiveRecord::Base
  belongs_to :author
  belongs_to :unit
end
