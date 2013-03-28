class FailureReport < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  belongs_to :unit

  validates_presence_of :author
  validates_length_of :subject, minimum: 15
end
