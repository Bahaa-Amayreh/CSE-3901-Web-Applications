require 'httparty'
require 'json'

# API request using HTTParty
#United+States, Sweden, Germany
response = HTTParty.get('http://universities.hipolabs.com/search?country=Sweden')

# Check if the response was successful
if response.code == 200
  # Parse the response as JSON
  universities = JSON.parse(response.body)

  # Output the list of universities
  universities.each_with_index do |university, index|
    puts "#{index + 1}. #{university['name']} #{university['web_pages']}, #{university['country']}"
  end
  puts"---------------------------------------------------"
  # Output the total number of universities
  puts "Total number of universities: #{universities.size}"
else
  # Print an error message if the request was unsuccessful
  puts "Failed to retrieve data: #{response.code}"
end