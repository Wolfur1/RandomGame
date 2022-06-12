io.write("Username (Usefull for the game regestry): ")
local username = io.read()

local number = math.random(0, 200)
local attemp = 0

repeat
io.write("Write a number (0/200): ")
local guessNumber = tonumber(io.read())

if guessNumber >= number then
	print("-")
else if guessNumber <= number then
	print("+")
end
end

attemp = attemp + 1

until guessNumber == number
print("Good job!")
print("Attemp:"..attemp)

io.write("Name  of file: ")
local fileName = io.read()

file = io.open(fileName..".rg", "a")
file:write(username.." found the number "..number.." in "..attemp.." attemps. \n")
file:close()