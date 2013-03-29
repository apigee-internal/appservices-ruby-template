# 1. Be sure you have the 'usergrid_iron' gem install by running 'bundle install'.
# Require the gem at the top of the file. 
require 'usergrid_iron'

# Fill in the values necessary to intialize your client
# Enter your orgName below — it’s the username you picked when you signed up at apigee.com
# Keep the appName as “sandbox”: it’s a context we automatically created for you. 
# It’s completely open by default, but don’t worry, other apps you create are not!    
usergrid_api = 'http://api.usergrid.com'
organization = ''
application = 'sandbox'

#Intialize your client here
application = Usergrid::Application.new "#{usergrid_api}/#{organization}/#{application}"

#Use the method create_{entity name} with named arguments for 
#the properties you want to create
#The code below will create a book named 'the old man and the sea'
response = application.create_book name: 'the old man and the sea'

# the response has returned the entity data
# response.entity wraps it in an easy-to-use object
book = response.entity