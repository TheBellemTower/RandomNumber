-----------------------------------------------------------------------------------------
--
-- main.lua
--
--Created by Ethan Bellem
--Created on March 2018
--
--will make a random number guessing game
--
-----------------------------------------------------------------------------------------

math.randomseed( os.time() )

local numberToGuess = math.random( 1, 10 )
local answer
local answerNumber

print( "the correct number is")
print( numberToGuess )

local directions = display.newText( "Enter A Bumber Between 1 And 10", display.contentCenterX, 200, native.systemFont, 125 )
directions:setTextColor( 0, 1, 1 )

local answerBox = native.newTextField( display.contentCenterX, display.contentCenterY - 300, 600,100 )

local enter = display.newImageRect("enter.png", 500,500)
enter.x = 1000
enter.y = 700
local function onButtonPressed( event )
	-- this function will make a you lose symbol come up if number guessed is wrong
	-- and will make you win come up if guessed right
	answerNumber = tonumber(answerBox.text)
	

	if answerNumber == numberToGuess then 
		directions.alpha = 0
		enter.alpha = 0
		answerBox.alpha = 0
		local winText = display.newText( "You Win", display.contentCenterX, display.contentCenterY, native.systemFont, 125)
		winText:setTextColor( 0, 1, 0 )
	else 
		directions.alpha = 0
		enter.alpha = 0
		answerBox.alpha = 0
		local loseText = display.newText("You Lose",display.contentCenterX, display.contentCenterY, native.systemFont, 125)
		loseText:setTextColor( 1, 0, 0 )
	end

end

enter:addEventListener("touch", onButtonPressed)