def nyc_pigeon_organizer(data)
  new_hash = {}
  
  data.each do |a_name, a|
    a.each do |a_value, names|
      names.each do |name|
        new_hash[name] ||= {}
        new_hash[name][a_name] ||= []
        new_hash[name][a_name].push(a_value.to_s)
      end
    end
  end
  new_hash
end
