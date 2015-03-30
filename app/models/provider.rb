class Provider < ActiveRecord::Base
  has_many :refunds
  validates :name, :presence => true
  validates :phone, :presence => true
  validates :tin, :presence => true

  def self.search(search)
    if search
      where('tin LIKE ?', "%#{search}%")
    else
      nil
    end
  end
end
