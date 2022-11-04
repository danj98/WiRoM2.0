### WiRom exercise

The results were a bit mixed. WiRom 2 and Webot ran as expected, but the included world file did not.
I therefore attempted to create my own world:
![world](https://github.com/danj98/WiRoM2.0/blob/master/assets/new-world.png)

# Custom mission
I attempted to make my own mission using the web interface. I added the robots needed in the DSL editor: DeliveryRobot, Transporter and ReceiveRobot,
and gave them the following mission:
- DeliveryRobot
1. Picks up box in front of it
2. Turns right for 7 seconds (~90 degrees)
3. Drops box on moose
4. Gives delivery location to moose
- Transporter
1. Receives location from DeliveryRobot
2. Goes to location
3. Stops
- ReceiveRobot
1. Picks up box
2. Turns right for 7 seconds
3. Drops box

![mission](https://github.com/danj98/WiRoM2.0/blob/master/assets/mission-timeline.png)

I added the robots in Webot and gave them the appropriate nodes.
When attempting to send the mission, I got an error saying "mission is not valid" with no further explanation.
Inspecting the source code did not enlighten much. I managed to launch a simple mission consisting of turn -> extend arms -> retract arms.

# Custom algorithm
Due to the unstable software, I was not able to create a custom algorithm. I wanted to make one where the moose knew when a package was placed on it.
I played around with the random allocation, and as expected the tasks were allocated randomly.

The video of the mission I managed to create is included in the assets folder.
