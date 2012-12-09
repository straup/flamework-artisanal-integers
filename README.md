flamework-artisanal-integers
==

Drop-in code and libraries for using artisanal integer-as-a-service provider
APIs in your Flamework projects.

Example
--
	loadlib("artisanal_integers");

	# Generate an integer from a random provider

	$rsp = artisanal_integers_create();
	dumper($rsp);

	# Generate an integer from a specific provider
	
	$available = artisanal_integers_available_providers();
	
	foreach ($available as $provider){
		$rsp = artisanal_integers_create($provider);
		dumper($rsp);
	}
	

See also:
--

* [flamework](https://github.com/exflickr/flamework)

* [Mission Integers](http://www.missionintegers.com/)

* [Brooklyn Integers](http://www.brooklynintegers.com/)

* [London Integers](http://www.londonintegers.com/)
