#ft

Refuel script

#m

Main script. Digs in a straight line until it runs out of fuel, then self destructs. Put an enderchest in slot 1. Put two pieces of TNT in slot 2.

`phone_home` is used to keep a track of it out of game. Can be commented out if you can't or don't want to use it. Otherwise, put index.php somewhere publicly accessable and change the URL in `m`.

#startup

Restarts `m` if the server is restarted (hopefully).