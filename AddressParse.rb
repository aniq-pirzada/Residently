def getAddress(hash)
  # Return Address
  address = ""

  subpremise = "#{hash['subpremise']}"
  house_number = "#{hash['house_number']}"
  house_name = "#{hash['house_name']}"
  street_line_1 = "#{hash['street_line_1']}"
  street_line_2 = "#{hash['street_line_2']}"
  town_or_city = "#{hash['town_or_city']}"
  region = "#{hash['region']}"
  postcode = "#{hash['postcode']}"

  # if subpremise is present then append to final address
  unless subpremise.to_s.strip.empty?
    address.concat(subpremise + ", ")
  end

  # if house name is present then append to final address
  unless house_name.to_s.strip.empty?
    address.concat(house_name + "\n")
  end

  # if house number is present then append to final address
  unless house_number.to_s.strip.empty?
    address.concat(house_number + " ")
  end

  # append street line 1
  address.concat(street_line_1 + ",\n")

  # if street line 2 is present then append to final address
  unless street_line_2.to_s.strip.empty?
    address.concat(street_line_2+ ",\n")
  end

  # add town / city to final address
  address.concat(town_or_city + ",\n")

  # if region is present then add to final address
  unless region.to_s.strip.empty?
    address.concat(region + ",\n")
  end

  # add postcode to final address
  address.concat(postcode)
end

# Contains the 4 test cases.
def tests()
  a = eval('{
          "subpremise" => "Flat 23",
          "house_number" => "83",
          "house_name" => "The Sorting House",
          "street_line_1" => "Newton Street",
          "street_line_2" => nil,
          "town_or_city" => "Manchester",
          "region" => nil,
          "postcode" => "M1 1ER"
          }')
  puts getAddress(a)
  puts

  b = eval('{
          "subpremise" => nil,
          "house_number" => "81",
          "house_name" => nil,
          "street_line_1" => "Station Road",
          "street_line_2" => "Didsbury",
          "town_or_city" => "Manchester",
          "region" => nil,
          "postcode" => "M20 1HR"
          }')

  puts getAddress(b)
  puts

  c = eval('{
          "subpremise" => nil,
          "house_number" => nil,
          "house_name" => "Holly House",
          "street_line_1" => "Mersey Road",
          "street_line_2" => nil,
          "town_or_city" => "Manchester",
          "region" => nil,
          "postcode" => "M33 6HL"
          }')

  puts getAddress(c)
  puts

  d = eval('{
          "subpremise" => "Apt 6",
          "house_number" => "22",
          "house_name" => nil,
          "street_line_1" => "Bailey Rd",
          "street_line_2" => nil,
          "town_or_city" => "Sale",
          "region" => "Greater Manchester",
          "postcode" => "M33 1AX"
          }')

  puts getAddress(d)
  puts
end


# Run Tests
tests()
