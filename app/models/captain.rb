class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
     self.all.includes(boats: :classifications).where(classifications: {name: "Catamaran"}).uniq
  end

  def self.sailors
    self.all.includes(boats: :classifications).where(classifications: {name: "Sailboat"}).uniq
  end

  def self.talented_seafarers
  end

  def self.non_sailors
  end


end
