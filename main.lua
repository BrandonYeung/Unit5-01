-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local diameterOfCircleTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 300, 75 )
diameterOfCircleTextField.id = "diameter textField"

local CircumferenceOfCircleTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 20 )
CircumferenceOfCircleTextField.id = "circumference textField"
CircumferenceOfCircleTextField:setFillColor( 1, 1, 1 )

local AreaOfCircleTextField = display.newText( "", display.contentCenterX, display.contentCenterY - 240, native.systemFont, 20 )
AreaOfCircleTextField.id = "area textField"
AreaOfCircleTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "calculator-buttons-png-17.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"


local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local diameterOfCircle
    local CircumferenceOfCircle
    local AreaOfCircle
 
    diameterOfCircle = diameterOfCircleTextField.text
    CircumferenceOfCircle = math.pi * diameterOfCircle
    -- print( areaOfSquare )CircumferenceOfCircleTextField.text = "The circumference is " .. CircumferenceOfCircle
    CircumferenceOfCircleTextField.text = "The circumference is" .. CircumferenceOfCircle
    AreaOfCircle = (1/4) * math.pi * (diameterOfCircle * diameterOfCircle)
    AreaOfCircleTextField.text = "The area is" .. AreaOfCircle


    return true
end


calculateButton:addEventListener( "touch", calculateButtonTouch )