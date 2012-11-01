class Album < ActiveRecord::Base
  attr_accessible :artist_id, :title
 
  def artist
    return Artist.where(:id => self.artist_id)
  end
     
  
end
