class Artist < ActiveRecord::Base
  attr_accessible :name
  
  def albumlist 
    
    album_array = []

    album_list = Album.where(:artist_id => self.id)
    album_list.collect do |a|
      album_array << a.title
    end
    
    return album_array
    
  end
  
  
  
end
