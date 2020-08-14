require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  hash = {}
  data.each{ |key, value| 
    value.each{ |i, value|
      value.each{ |value| 
        if hash[value]
          hash[value][key] << i.to_s
          binding.pry
        else
          hash[value] = { key => [i.to_s]}
        end
      }
    }
  }
  binding.pry
end
