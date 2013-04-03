# 1. Be sure you have the 'usergrid_iron' gem install by running 'bundle install'.
# Require the gem at the top of the file. 
require 'usergrid_iron'

# 2. Fill in the values necessary to intialize your client
# Enter your orgName below — it’s the username you picked when you signed up at apigee.com
# Keep the appName as “sandbox”: it’s a context we automatically created for you. 
# It’s completely open by default, but don’t worry, other apps you create are not!    
usergrid_api = 'https://api.usergrid.com'
organization = 'YOUR APIGEE.COM USERNAME'
application = 'sandbox'

# Intialize your client here
application = Usergrid::Application.new "#{usergrid_api}/#{organization}/#{application}"


# 3. Use the method create_{entity name} with named arguments for 
# the properties you want to create
# The code below will create a book named 'the old man and the sea'
begin
	puts "Success! Here is the object we stored; "
	puts "notice the timestamps and unique id we created for you:"
	response = application.create_book name: 'the old man and the sea'
rescue
	puts "Could not create the book. Did you enter your organization (username) correctly on line 10 of ruby_example.rb?"
end