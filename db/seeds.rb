["Seattle","New York","Los Angeles","Chicago","Portland", "Oakland", "San Francisco", "Memphis", "Atlanta"].each do |city|
  puts "Adding #{city}"
  c = City.find_or_create_by_name(city)
  c.save
end

["Community","Services","Housing","For Sale","Jobs"].each do |cat|
  puts "Adding #{cat}"
  c = Category.find_or_create_by_name(cat)
  c.permalink = cat.downcase
  c.save
end

def add_subcats(catname, subcats)
  cat = Category.find_by_name(catname)
  subcats.each do |scat|
    puts "Adding #{scat} to #{cat.name}"
    c = Subcategory.find_or_create_by_name_and_parent_id(scat, cat.id)
    c.save
  end
end

add_subcats("Community",["activities", "childcare","general","volunteers","classes"])
add_subcats("Housing",["apts / housing", "rooms / shared", "sublets / temp", "housing wanted", "vacation rentals"])
add_subcats("For Sale",%w(appliances antiques barter bikes business computer free furniture general tools arts+crafts baby+kids garage_sale))