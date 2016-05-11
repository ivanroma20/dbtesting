require '../support/job'
require 'model/tables'
Given(/^raw data is available$/) do
  result= $sqlconnection.execute("truncate table movies")
  @myfile='data/raw_movie.dat'
end

When(/^jobs are completed successfully$/) do
  load_data(@myfile)
end

Then(/^all data is captured$/) do
 result= TablesDB::Movies.all
  expect(result.count).to be(3)
end


And(/^Data is validated$/) do
  result= TablesDB::Movies.all
  expect(result[0][:name]).to eq('Inception')
end