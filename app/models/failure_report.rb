class FailureReport < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  belongs_to :unit

  validates_presence_of :author
end
