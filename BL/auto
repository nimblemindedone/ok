import keyboard
import mouse
import random
from time import sleep as wait  # time.sleep is gay
from pyxboxcontroller import XboxController, XboxControllerState # for roller

controller = XboxController(0)
def shoot():
    weight = random.uniform(0.337, 0.3395)
    if keyboard.is_pressed('e'):
        wait(weight)
        if keyboard.is_pressed('e'):
            if mouse.is_pressed(button="left"):
                return
            else:
                print('Let go')
                keyboard.release('e')
                
    if controller.state.r_trigger == 1:
        wait(weight)
        if controller.state.r_trigger == 1:
            if controller.state.rb:
                return
            else:
                print('Let go')
                keyboard.release('e')
while True:
    try:
        wait(0.001)
        if mouse.is_pressed(button="left"):
            print("pressed")
            mouse.wait(button='left', target_types='up')
            print("released")
        elif keyboard.is_pressed('e'):
            shoot()
        elif keyboard.is_pressed('alt') and keyboard.is_pressed('x'):
            break
    
        if controller.state.rb:
            print("pressed")
            while controller.state.rb:
                pass 
            print("released")
        elif controller.state.r_trigger == 1:
            shoot()
    except Exception:
        pass
