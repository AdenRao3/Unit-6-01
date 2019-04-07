-----------------------------------------------------------------------------------------
--
-- Created by: Aden Rao
-- Created on: April 1, 2019
--
-- This program randomly picks a number between 1 and 6 and then it lets the user enter a number and then it will let you know if it is right.
--
-----------------------------------------------------------------------------------------


-- Background colour
----------------
display.setDefault( "background", 255/255, 0/255, 132/255 )
---------------

-- Tile and dice image
-----------------
local title = display.newImageRect( "assets/title.png", 300, 500 )
title.x = 160
title.y = 210

local image = display.newImageRect( "assets/dice.png", 130, 130 )
image.x = 160
image.y = 130
------------------

-- Calculate button and text field
---------------
local calculateButton = display.newImageRect( "assets/button.PNG", 200, 75 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY + 130
calculateButton.id = "calculate button"

answerAsNumberField = native.newTextField( display.contentCenterX, display.contentCenterY + 230, 225, 40 )
answerAsNumberField.id = "Answer textField"
-----------------

-- Text telling user to pick a number between 1 and 6
--------------------
responseText = display.newText( "  Pick a number \nbetween 1 and 6", display.contentCenterX, display.contentCenterY - 5, native.systemFont, 35 )
responseText:setFillColor( 255/255, 255/255, 255/255 )
--------------------

-- Calculater button touch event
local function calculateButtonTouch( event )

math.randomseed( os.time() ) -- Randomseed

-- Variables for the number to guess and the number that the user has entered
------------
local numberToGuess = math.random( 1, 6 )
local answerAsNumber = tonumber(answerAsNumberField.text)
-------------

-- If statement for if the user's answer is equal to the number to guess
if numberToGuess == answerAsNumber then
    responseText.text = "Correct"
else 
	responseText.text = "Wrong!"
    local myText = display.newText( "The correct answer was " .. numberToGuess, display.contentCenterX, display.contentCenterY + 45, native.systemFont, 27)

end

end

calculateButton:addEventListener( "touch", calculateButtonTouch )
