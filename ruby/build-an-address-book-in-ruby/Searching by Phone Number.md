#Searching by Phone Number

##Techer's Notes

**Code Samples**

`def find_by_phone_number(number)
  results = []
  search = number.gsub("-", "")
  contacts.each do |contact|
    contact.phone_numbers.each do |phone_number|
      if phone_number.number.gsub("-", "").include?(search)
        results.push(contact) unless results.include?(contact)
      end
    end
  end
  print_results("Phone search results (#{search})", results)
end
``
``
def print_results(search, results)
  puts search
  results.each do |contact|
    puts contact.to_s('full_name')
    contact.print_phone_numbers
    contact.print_addresses
    puts "\n"
  end
end`
