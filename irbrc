require 'rubygems'

%w|rubygems wirble hirb|.each do|lib|
  begin
    require lib
  rescue LoadError => err
    warn "Couldn't load #{lib}: #{err}"
  end
end


Wirble.init
Wirble.colorize

#Hirb::View.enable


# sample data
HASH = { 
  :bob => 'Marley', :mom => 'Barley', 
  :gods => 'Harley', :chris => 'Farley'} unless defined?(HASH)
ARRAY = HASH.keys unless defined?(ARRAY)

class Object
  # Return only the methods not present on basic objects
  def interesting_methods
    (self.methods - Object.new.methods).sort
  end
end