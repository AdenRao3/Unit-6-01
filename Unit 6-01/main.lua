-----------------------------------------------------------------------------------------
--
-- Created by: Aden Rao
-- Created on: April 1, 2019
--
-- This program randomly picks a number between 1 and 6 and then it lets the user enter a number and then it will let you know if it is right.
--
-----------------------------------------------------------------------------------------

--backround
display.setDefault( "background", 125/255, 0/255, 200/255 )

local calculateButton = display.newImageRect( "./assets/button.png", 300, 90 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = " calculateButton "
 
local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 300, 60 )
answerTextField.id = "answer textField"

--randomseed
math.randomseed( os.time() )

local numberToGuess = math.random( 1, 2 )
local answerAsNumber = tonumber( answerTextField.text )

-- Text telling person to choose a number

print( "Pick a number from 1 to 6: " )


local function calculateButtontouch ( event)

	if numberToGuess == answerAsNumber then
    	print( "Correct" )
	else
		print( "Wrong, guess again!")
		print( "Correct answer was " ..numberToGuess )
	end
	print( "The correct answer was", numberToGuess )
	print( "Please play again!" )
end
		

calculateButton :addEventListener( "touch", calculateButtontouch )