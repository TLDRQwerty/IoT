local function lightLED()
	local pinLED = 4;
	gpio.mode(pinLED, gpio.OUTPUT);
	gpio.write(pinLED, gpio.LOW);

	pinLED = 0;
	gpio.mode(pinLED, gpio.OUTPUT);
	gpio.write(pinLED, gpio.LOW);
end

local timer = tmr.create();
timer:register(2000, 1, lightLED);

timer:start();
