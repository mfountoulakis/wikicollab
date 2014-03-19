class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :wikis
  has_one :subscription



  scope :without_user, lambda{|user| user ? {:conditions => ["id != ?", user.id]} : {} }


  has_and_belongs_to_many :collaborations, class_name: 'Wiki'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  after_create :subscription

  def subscription
    !!self.subscribed
  end

end



