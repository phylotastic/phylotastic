# template of ruby client

require 'net/http'

def call_service(param1_val, param2_val)

	uri = URI('http://phylo.cs.nmsu.edu:5004/phylotastic_ws/ts/country_species')
	
	params = { :taxon => param1_val, :country => param2_val }
	
	uri.query = URI.encode_www_form(params)
	
	response = Net::HTTP.get_response(uri)
	
	response_body = response.body if response.is_a?(Net::HTTPSuccess)
	
	puts response_body

end

if __FILE__ == $0
	call_service("Vulpes", "Nepal")
end

# end 