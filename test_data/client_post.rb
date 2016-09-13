# ruby client to resolve sci names from OT

require 'net/http'
require 'json'
require 'uri'

def call_service(input_data)

	url = 'http://phylo.cs.nmsu.edu:5004/phylotastic_ws/tnrs/ot/names'
	uri = URI.parse(url)
	
	headers = {"Content-Type" => "application/json", "Accept" => "application/json" }
	
	http = Net::HTTP.new(uri.host, uri.port)
	
	response = http.post(uri.path, input_data.to_json, headers)
	
	puts response.body

end

if __FILE__ == $0
	input_data = {"scientificNames" => ["Formica exsectoides", "Formica pacifica"]}
	call_service(input_data)
end

# end 