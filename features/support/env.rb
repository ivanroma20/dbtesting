require 'sequel'
require 'rspec'
#$sqlconnection=Sequel.connect('jdbc:mysql://localhost/user=root&password=')
#$sqlconnection=Sequel.connect('jdbc:mysql://sql5.freemysqlhosting.net:3306/sql5118938?user=sql5118938&password=JQPF6R7Uh5')

$sqlconnection = Sequel.connect(:adapter => 'mysql2', :user => 'root', :password => '', :host => "localhost" , :database => "testdb")