import sys
import os

controller_path = os.path.join(os.getcwd(), os.pardir)
sys.path.insert(0, controller_path)

from moose_controller_class import MooseControllerClass
moose_controller = MooseControllerClass("ransporter")
moose_controller.initiate_threads()