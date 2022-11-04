import sys
import os

controller_path = os.path.join(os.getcwd(), os.pardir)
sys.path.insert(0, controller_path)

from pr2_controller_class import Pr2ControllerClass
pr2_controller = Pr2ControllerClass("ReceiveRobot")
pr2_controller.initiate_threads()