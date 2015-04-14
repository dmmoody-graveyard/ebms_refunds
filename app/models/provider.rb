class Provider < ActiveRecord::Base
  has_many :refunds
  validates :name, :presence => true
  validates :phone, :presence => true
  validates :tin, :presence => true

  def self.search(provider)
    if provider
      find_by(tin: "%#{provider}%")
    else
      scoped
    end
  end
end
