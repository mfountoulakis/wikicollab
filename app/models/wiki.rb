class Wiki < ActiveRecord::Base
  belongs_to :user
  validates :title, :presence => true
  validates :body, :presence => true

  has_and_belongs_to_many :collaborators, class_name: 'User'


end
