class Picture < ActiveRecord::Base
  attr_accessible :url, :caption
  # THIS HAS NOTHING TO DO WITH ATTR_ACCESSOR
  # THIS HAS NOTHING TO DO WITH WHICH COLUMNS WE HAVE IN THE TABLE
  # THIS IS ONLY FOR WHITELISTING WHICH COLUMNS CAN BE MASS ASSIGNED

  validates_presence_of :url
  validates_uniqueness_of :url
end
