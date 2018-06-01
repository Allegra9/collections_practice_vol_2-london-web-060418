def begins_with_r(array)
  true_array = []
  array.collect do |name|
    if name.start_with?("r")
      true_array << name
    end 
  end 
  true_array == array
end

def contain_a(array)
  cont_a = []
  array.collect do |word|
    if word.include?("a")
      cont_a << word
    end
  end 
  cont_a
end 

def remove_non_strings(array)
  #remove everything that's not a string 
  strings_only = []
  array.collect do |element|
    if element.class == String
      strings_only << element
    end 
  end 
  strings_only
end

def first_wa(array)
  start_wa = []
  array.collect do |word|
    if word.class == String && word.start_with?("wa")
        start_wa << word 
    end
  end
  start_wa.first 
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq    
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(array)
  container = []
  array.each do |element|
    if element[:temperature] == "cool" 
      container << element
    end
  end
  container
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end 






