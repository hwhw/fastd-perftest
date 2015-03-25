Performance test setup for fastd
--------------------------------

This is a simple configuration for testing fastd performance.
It comes with a *very* basic script that will run two fastd instances that will
listen on 127.0.0.1:10000 and :10001 and will connect to each other.
Network devices fast1 and fast2 will be created.
If IPv6 is properly set up, link-local IPv6 addresses should get assigned.
Those are used for doing a transfer speed test via the device-notation,
thus sparing us from doing complicated route setups.

What is needed:
* fastd (http://git.universe-factory.net/fastd/)
* iperf2 (https://iperf.fr/)
* properly setup computer:
  * ports 10000, 10001 available for listening on 127.0.0.1 (yep, IPv4 here)
  * no firewalling that gets in the way (IPv6 TCP connections between fast1 and fast2)
  * no network manager claiming the devices as they get up
