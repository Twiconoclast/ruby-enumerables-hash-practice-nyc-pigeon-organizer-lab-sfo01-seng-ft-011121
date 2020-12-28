def nyc_pigeon_organizer(data)
  by_name = {}
  data.each do |cgl, cgl_hash|
    cgl_hash.each do |cgl_s, name_arr|
      name_arr.each do |name|
        new_arr = (cgl_hash.select {|k, v| v.include?(name)}).keys
        new_arr = new_arr.map {|k| k.to_s}
        by_name[name]= {cgl => new_arr}
        by_name[name][cgl] = new_arr
      end
    end
  end
  return by_name
end
