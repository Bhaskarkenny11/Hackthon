# test_connection.rb

# require 'tiny_tds'

# # Specify your database connection parameters
# username = 'tcp:localhost,1433'
# password = 'iemp'
# host = 'GNZ00000681.database.windows.net'
# port = 1433
# database = 'production20240320'
# adapter=sqlserver

# # Establish a connection to the SQL Server database
# client = TinyTds::Client.new(
#   username: username,
#   password: password,
#   host: host,
#   port: port,
#   database: database,
#   azure: true
# )

# # Test the connection by executing a simple query
# begin
#   result = client.execute("SELECT @@VERSION AS [Version]")
#   version = result.first['Version']
#   puts "Connected to SQL Server! Server version: #{version}"
# rescue TinyTds::Error => e
#   puts "Error connecting to SQL Server: #{e.message}"
# ensure
#   client.close if client
# end
