require 'byebug'

def nyc_pigeon_organizer(data)
  organized_hash = {}
  pigeon_names = []

  pigeon_names = data[:gender][:male] + data[:gender][:female]
  
  pigeon_names.each do |name|
    organized_hash[name] = {}
  end

  data.each do |attribute, attribute_data|
    attribute_data.each do |attribute_value, names|

      names.each do |name|

        if organized_hash[name][attribute]
          organized_hash[name][attribute] << attribute_value.to_s
        else
          organized_hash[name][attribute] = [attribute_value.to_s]
        end

      end
    end
  end

  organized_hash
end