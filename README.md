
A really simple wrapper for the Sensor API

### Usage

```.ruby
    require 'sensor'
    client = Sensor::Client.new
    client.journeys(33) #=> Returns todays journeys for the vehicle
    client.total_distance(33) #=> Returns todays distance for the vehicle
    client.total_distance(33,{:start => '2011-07-25', :end => '2011-07-26'})
```

In development, you may need to add the lib dir to load path

    $:<<'./lib'


Release a new version of the gem by bumping up the version number in the Rakefile
then running 

    rake package
    rake tag




