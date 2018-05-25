pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
-- cube
xaxis=0
yaxis=0
width=5
height=5

res=127
xrange=res-width
yrange=res-height
moveunit=2

function move()
	if btn(0) then
		if xaxis > 0 then
			xaxis-=moveunit
		else
			xaxis=0
		end
	elseif btn(1) then
		if xaxis < xrange then
			xaxis+=moveunit
		else
			xaxis=xrange
		end
	elseif btn(2) then
		if yaxis > 0 then
			yaxis-=moveunit
		else
			yaxis=0
		end
	elseif btn(3) then
		if yaxis < yrange then
			yaxis+=moveunit
		else
			yaxis=yrange
		end
	end
end

function _update()
	move()
end

function _draw()
	-- background
	rectfill(0,0,res,res,13)
	-- cube
	rectfill(xaxis,yaxis,xaxis+width,yaxis+height,15)

	print("xaxis: "..xaxis, 2, 113, 7)
	print("yaxis: "..yaxis, 2, 121, 7)
end
