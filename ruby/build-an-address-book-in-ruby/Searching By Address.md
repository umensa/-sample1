#Searching By Address
In our final bit of search functionality, we add the ability to search by address.

##Techer's Notes

**Code Samples**
`def find_by_address(query)
  results = []
  search = query.downcase
  contacts.each do |contact|
    contact.addresses.each do |address|
      if address.to_s('long').downcase.include?(search)
        results.push(contact) unless results.include?(contact)
      end
    end
  end
  print_results("Address search results (#{search})", results)
end`