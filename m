function dump_to_ender()
	phone_home('Dumping to ender chest')
	turtle.select(1)
	turtle.digDown()
	if not turtle.placeDown() then
		print ("Unable to place chest!")
		return
	else
		for drop=3, 16 do 
			print ( 'Dumping in slot ', drop  )
			turtle.select(drop)
			turtle.dropDown(64)
		end
		turtle.select(1)
		turtle.digDown()
	end

end
 	

function phone_home(msg)
	msg = string.gsub(msg, " ", "%%20")
	http.get("http://example.com/?id=" ..  os.getComputerID() .."&msg=" .. msg .. "&fuel=" .. turtle.getFuelLevel())
	return
end

phone_home('Hello World!')

-- Pick up ender chest
turtle.select(1)
turtle.digDown()

while true do

	for x = 1, 64 do
	
		if turtle.getFuelLevel() <= 60 then
			phone_home('Self destructing now')
			dump_to_ender()

			while turtle.down() do
				turtle.down()
			end

			tutle.up()
			turtle.digUp()
			turtle.digDown()
			turtle.dig()
			turtle.select(2)
			turtle.placeUp()
			turtle.placeDown()
			turtle.place()
			redstone.setOutput("bottom", true)
			redstone.setOutput("front", true)
		end
	
		while turtle.detect() or turtle.detectDown() or turtle.detectUp() do
			turtle.dig()
			turtle.digUp()
			turtle.digDown()
			sleep(0.5) --wait for falling sand/ gravel
		end
		
		while turtle.forward() == false do
			turtle.forward()
		end
		
		print ("x: ", x, " fuel: ", turtle.getFuelLevel())
	end
	

	dump_to_ender()


end