# MIT License

# Copyright (c) 2020 Jean-Jacques François Reibel

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

oo::class create Car {
    variable wheels
    variable doors
    variable cylinders
    constructor {wheelsIn doorsIn cylindersIn} {
        set wheels $wheelsIn
        set doors $doorsIn
        set cylinders $cylindersIn
    }
    method addWheels {wheelsToAdd} {
        set wheels  [expr $wheels + $wheelsToAdd] 
    }
    method addDoors {doorsToAdd} {
        set doors  [expr $doors + $doorsToAdd] 
    }
    method addCylinders {cylindersToAdd} {
        set cylinders  [expr $cylinders + $cylindersToAdd] 
    }
    method deleteWheels {wheelsToRipOff} {
        set wheels  [expr $wheels - $wheelsToRipOff] 
    }
    method deleteDoors {doorsToRipOff} {
        set doors  [expr $doors - $doorsToRipOff] 
    }
    method deleteCylinders {cylindersToRipOff} {
        set cylinders  [expr $cylinders - $cylindersToRipOff] 
    }
    method update {} {
      puts "Wheel check: $wheels"
      puts "Wheel door: $doors"
      puts "Wheel cylinder: $cylinders \n"
    }
}

puts "Creating car."
Car create subaru 4 4 4
subaru update
#Accessing instance variables without class methods is not possible in Tcl
puts "Adding wheel using class method."
subaru addWheels 1
subaru update
puts "Removing wheel using class method."
subaru deleteWheels 1
subaru update
