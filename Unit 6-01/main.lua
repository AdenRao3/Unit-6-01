-----------------------------------------------------------------------------------------
--
-- Created by: Aden Rao
-- Created on: April 1, 2019
--
-- This program randomly picks a number between 1 and 6 and then it lets the user enter a number and then it will let you know if it is right.
--
-----------------------------------------------------------------------------------------

--backround colour and title
--------------
display.setDefault( "background", 125/255, 0/255, 200/255 )
local myText = display.newText( "Guess The \n Number!", 160, 30, native.systemFont, 45 )
myText:setFillColor( 255/255, 100/255, 0 )
--------------

-- Calculate button and text field
-------------
local calculateButton = display.newImageRect( "./assets/button.png", 300, 90 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY - 80
calculateButton.id = " calculateButton "
 
local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 300, 60 )
answerTextField.id = "answer textField"
--------------

--randomseed
math.randomseed( os.time() )
----------

-- Functions
local numberToGuess = math.random( 1, 2 )
local answerAsNumber = tonumber( answerTextField.text )
--------

-- Text telling person to choose a number
----------
local myText = display.newText( "  Pick a number \nbetween 1 and 6", 160, display.contentCenterY + 40, native.systemFont, 40 )
myText:setFillColor( 255/255, 100/255, 0 )
----------


local function calculateButtontouch ( event)

	if numberToGuess == answerAsNumber then
local myText = display.newText( "Correct", 160, display.contentCenterY + 40, native.systemFont, 40 )
	else
		local myText = display.newText( "                Wrong! \n The correct answer is: "..  numberToGuess, display.contentCenterX, display.contentCenterY - 50, native.systemFont, 25 ) 
	end
	print( "Please play again!" )
end

calculateButton :addEventListener( "touch", calculateButtontouch )
