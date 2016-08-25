class Person < ActiveRecord::Base
	  geocoded_by :full_street_address
	  after_validation :geocode
  def full_street_address
  [ city, town, banchi].compact.join(', ')
  end
  
  acts_as_gmappable
  def gmaps4rails_infowindow
    "<h3>#{name}</h3><p>#{city}#{town}#{banchi}</p><p>#{tel_sinai}</p>"

  end
  def gmaps4rails_address
    #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{city},#{town},#{banchi}"
  end
  
end
