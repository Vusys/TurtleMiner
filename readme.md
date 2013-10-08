#Vusys' turtle mining script!

##Requirements

* Resources to make a lot of chunkloading mining turtles.
* Lots of turtle fuel. I'm using stacks of Blaze rods from a soul shards blaze farm. You could also use charcoal from a tree farm, solar panels, etc.
* Enderchests. 
* An intake system that can handle *lots* of incoming items in short and sudden bursts. I use AE with two precision import buses set to whole stacks mode.

##Files

###ft

Fueling script. Put fuel in your turtle and it'll gobble up everything.

###m

Main script. Digs in a straight line until it runs out of fuel, then self destructs. Put an enderchest in slot 1. Put three pieces of TNT in slot 2.

The turtle will mine blocks in front, above, and below it. See the init file on how to start it. Your set up should look like this:

![](http://i.imgur.com/YstwUAQ.png)

`phone_home` is used to keep a track of it out of game. Can be commented out if you can't or don't want to use it. Otherwise, put index.php somewhere publicly accessible and change the URL in `m`.

###startup

Restarts `m` if the server is restarted (hopefully).

###init

Quick and dirty script to initialise the turtle. You need to put the scripts on pastebin yourself and change the pastebin IDs with them. With it, you can get a turtle going in under a minute:

1) Put down an enterchest then put your turtle on top.   
2) Run `pastebin get PASTEBIN_ID init`.   
3) Run `init`.    
4) Put in your fuel and run `ft`.   
5) Put in three pieces of TNT into slot 2.   
6) Run `m`, and the turtle will pick up the chest putting it into slot one and then go off on a mining adventure!   